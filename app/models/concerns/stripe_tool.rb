module StripeTool

  def self.create_customer(email: email, stripe_token: stripe_token)
    Stripe::Customer.create(
      email: email,
      source: stripe_token
    )
  end

  def self.create_charge params: {customer_id: customer_id, amount: amount, description: description}
    Stripe::Charge.create(
      customer: customer.id,
      amount: amount,
      description: description,
      currency: 'usd'
    )
  end


end
