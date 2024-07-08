import { serve } from 'https://deno.land/std@0.177.0/http/server.ts'
import { createClient } from 'https://esm.sh/@supabase/supabase-js@2'

const _OnesignalAppId_ = Deno.env.get('ONE_SIGNAL_APP_ID')!
const _OnesignalRestApiKey_ = Deno.env.get('ONE_SIGNAL_REST_API_KEY')!

const _SupabaseHost_ = Deno.env.get('SUPABASE_URL')!
const _SupabaseKey_ = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!

const supabase = createClient(_SupabaseHost_, _SupabaseKey_)

serve(async (req) => {
  try {
    const { record } = await req.json()

    const { local_card, transaction, status, value } = record

    if (status != 'required_confirmation') {
      console.log(`Transaction unit has not required confirmation, current state: ${status}`)
      return new Response(`Transaction unit current state: ${status}`, { status: 200 });
    }

    const transactionData = await supabase
      .from('transactions')
      .select('customer, local_address')
      .eq('id', transaction)
      .single()

    const account = await supabase
      .from('customers')
      .select('account')
      .eq('id', transactionData?.data?.customer)
      .single()

    const accountId = account?.data?.account

    const localAddress = await supabase
      .from('local_addresses')
      .select('local')
      .eq('id', transactionData?.data?.local_address)
      .single()

    const local = await supabase
      .from('locals')
      .select('name')
      .eq('id', localAddress?.data?.local)
      .single()

    const localCard = await supabase
      .from('local_cards')
      .select('name')
      .eq('id', local_card)
      .single()

    const name = local?.data?.name
    const cardName = localCard?.data?.name

    const options = {
      method: 'POST',
      headers: {
        accept: 'application/json',
        Authorization: `Basic ${_OnesignalRestApiKey_}`,
        'content-type': 'application/json'
      },
      body: JSON.stringify({
        include_aliases: {
          external_id: [accountId],
        },
        target_channel: 'push',
        contents: {
          pl: `Hej! Potwierdź odbiór nagrody "${cardName}" w ${name}!`,
          en: `Hey! Confirm the reward "${cardName}" pickup in ${name}!`,
        },
        name: 'REWARD_CONFIRMATION_REQUEST',
        app_id: _OnesignalAppId_,
      })
    };

    const response = await fetch('https://onesignal.com/api/v1/notifications', options)

    const { data, error } = await response.json();

    if (response.ok) {
      console.log('Notification was sent successfully')
      return new Response('Notification was sent successfully', {
        headers: { 'Content-Type': 'application/json' },
        status: 200,
      })
    }

    console.error('Can not sent notification', error)
    return new Response('Can not sent notification', {
      headers: { 'Content-Type': 'application/json' },
      status: 400,
    })

  } catch (err) {
    console.error('Failed to create OneSignal notification', err)
    return new Response('Server error', {
      headers: { 'Content-Type': 'application/json' },
      status: 400,
    })
  }
})
