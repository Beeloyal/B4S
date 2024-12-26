set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.call_generate_marker(endpoint text, local_id bigint, logo_url text)
 RETURNS jsonb
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
  response jsonb;
BEGIN
  SELECT * INTO response FROM http_post(
    endpoint,
    format(
      '{"id":"%s","logo_url":"%s"}',
      local_id::text,
      COALESCE(logo_url, '')
    ),
    'application/json'
  );

  RETURN response;
END;
$function$
;

CREATE OR REPLACE FUNCTION public.get_locals_geojson()
 RETURNS jsonb
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$BEGIN
  RETURN (
    SELECT jsonb_build_object(
      'type', 'FeatureCollection',
      'features', COALESCE(
        jsonb_agg(
          jsonb_build_object(
            'type', 'Feature',
            'geometry', jsonb_build_object(
              'type', 'Point',
              'coordinates', jsonb_build_array(g.long, g.lat)
            ),
            'properties', jsonb_build_object(
              'local_id', l.id,
              'address_id', la.id
            )
          )
        ),
        '[]'::jsonb
      )
    )
    FROM locals l
    JOIN local_addresses la ON la.local = l.id
    JOIN geo g ON g.local_address = la.id
    WHERE l.enabled = true
  );
END;$function$
;

CREATE OR REPLACE FUNCTION public.get_supabase_url()
 RETURNS text
 LANGUAGE plpgsql
AS $function$BEGIN
  RETURN 'https://cfrwepxesctjdwtkmfas.supabase.co';
END;$function$
;

CREATE OR REPLACE FUNCTION public.after_logo_url_update()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$DECLARE
  base_url text;
BEGIN
  -- Get base URL
  base_url := get_supabase_url();
  
  -- Call Edge Function only if logo_url changed and is not null/empty
  IF OLD.logo_url IS DISTINCT FROM NEW.logo_url AND NEW.logo_url IS NOT NULL AND NEW.logo_url != '' THEN
    BEGIN
      PERFORM call_generate_marker(
        base_url || '/functions/v1/generateMarker',
        NEW.id,
        NEW.logo_url
      );
    EXCEPTION WHEN OTHERS THEN
      -- Log error but don't block the update
      RAISE WARNING 'Failed to generate marker: %', SQLERRM;
    END;
  END IF;

  RETURN NEW;
END;$function$
;

CREATE TRIGGER after_logo_url_update AFTER INSERT OR UPDATE OF logo_url ON public.locals FOR EACH ROW EXECUTE FUNCTION after_logo_url_update();


