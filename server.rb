require 'sinatra'
require 'stripe'
# This is your test secret API key.
Stripe.api_key = ENV['STRIPE_SECRET_KEY']

set :static, true
set :port, 4242

# Securely calculate the order amount
def calculate_order_amount(_items)
  # Replace this constant with a calculation of the order's amount
  # Calculate the order total on the server to prevent
  # people from directly manipulating the amount on the client
  1400
end

# An endpoint to start the payment process
post '/create-payment-intent' do
  content_type 'application/json'
  data = JSON.parse(request.body.read)

  # Create a PaymentIntent with amount and currency
  payment_intent = Stripe::PaymentIntent.create(
    amount: price,
    currency: 'USD',
    automatic_payment_methods: {
      enabled: true,
    },
  )

  {
    clientSecret: payment_intent['client_secret']
  }.to_json
end