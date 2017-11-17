class OrderMailer < ApplicationMailer

  def kitchen_order_details(customer_email, cart, pickup_time)
    @customer_email = customer_email
    @cart = cart
    @pickup_time = pickup_time
    kitchen_email = 'kimchiistan@gmail.com'
    mail to: kitchen_email, subject: "Pickup time: #{@pickup_time}"
  end
end
