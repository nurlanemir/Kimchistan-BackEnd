class OrderMailer < ApplicationMailer

  def order(customer_email, cart, pickup_time)
    @customer_email = customer_email
    @cart = cart
    @pickup_time = pickup_time
    @kitchen_email = 'email should be here'#
    @url  = 'https://kimchistan-dev.surge.sh/'  #needs  to be changed before production to real address
    mail(to: @kitchen_email, subject: 'Pickup time: #{@pickup_time}')
  end
end
