#to permit use of publishable & secret API keys to interact with Stripe

  Rails.configuration.stripe = {
    :publishable_key => ENV['PUBLISHABLE_KEY'],
    :secret_key      => ENV['SECRET_KEY']
    }


      Stripe.api.key = Rails.configuration.stripe[:secret_key]
