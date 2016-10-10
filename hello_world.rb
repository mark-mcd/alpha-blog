require 'sinatra'
require 'sinatra/reloader' if development?
require 'stripe'
Stripe.api_key = "sk_test_TwiImPp8QoezGx4nAFAHYrhc"

get '/' do
  erb :index
end

post '/charge' do
    puts params.inspect
    token = params[:stripeToken]
    email = params[:stripeEmail]
    
    customer = Stripe::Customer.create(
         :email => email,
         :description => "Customer for #{email}",
         :source => token, # obtained with Stripe.js
         :account_balance => 1000 #only works for Invoices
    )
    puts customer
    Stripe::Charge.create(
        :customer => customer.id,
        :amount => 400,
        :currency => "eur",
        :description => "Charge for #{email}"
    )
    
    "Successfully created token: #{token} and email: #{email} and #{customer.id}"
end

get '/customer' do
    customers = Stripe::Customer.list(:limit => 20)
    #lists last three
    @c = customers.data
    #makes data publically available for views
    erb :customers
end