if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_8crtGl0ZfykbVSbAihuOC6aB',
    :secret_key => 'sk_test_UZOvw0y30IPYunp1Mky8kLSB '
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]