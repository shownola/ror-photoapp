Rails.configuration.stripe = {
  :publishable_key => ENV['PUBLISHABLE_KEY'],
  :secret_key => ENV['SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]

# Rails.configuration.stripe = {
#   :publishable_key => ENV[:STRIPE_TEST_PUBLISHABLE_KEY],
#   :secret_key => ENV[:STRIPE_TEST_SECRET_KEY]
# }
#
# Stripe.api_key = Rails.configuration.stripe[:secret_key]
#
#
# Stripe.api_key = Rails.configuration.stripe[:secret_key]
#

# Rails.configuration.stripe = {
#   :publishable_key => ENV['pk_test_JlSHGGGYWkOhvVn10YRhRfxc'],
#   :secret_key      => ENV['sk_test_szSE5c7vwU2wNu2CsWXmQeD5']
# }
# Stripe.api_key = Rails.application.credentials.stripe[:secret_key]
# Stripe.api_key = Rails.configuration.stripe[:secret_key]


# STRIPE_TEST_PUBLISHABLE_KEY='pk_test_JlSHGGGYWkOhvVn10YRhRfxc'
# STRIPE_TEST_SECRET_KEY='sk_test_szSE5c7vwU2wNu2CsWXmQeD5'
