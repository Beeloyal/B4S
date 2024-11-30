CREATE VIEW
    public.user_view AS
SELECT
    id,
    email,
    phone,
    raw_user_meta_data - > > 'display_name' AS display_name
FROM
    auth.users;