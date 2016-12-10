if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_ms3738aQ4mxZIO9TyGUOFXvM',
    :secret_key => 'sk_test_3Mumo3Qbd0ERs3ErIrPrhoZZ'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]