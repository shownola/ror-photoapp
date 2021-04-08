class ChargesController < ApplicationController

  def new
  end

  def create
    @amount = 1000

    customer = StripeTool.create_customer(email: params[:stripeEmail],
                                        stripe_token: params[:stripeToken])

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,
      description: 'Premium Customer',
      currency: 'usd'
    )


    

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end

    private

    def amount_to_be_charged
      @amount = 10000
    end
end
