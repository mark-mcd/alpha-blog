require 'pp'
require_relative 'user'

user = User.new('mm@stripe.com', 'Marko')

pp user

user.save