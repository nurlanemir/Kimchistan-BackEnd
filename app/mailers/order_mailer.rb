class OrderMailer < ApplicationMailer

  def order(user)
    #TODO change when we know what have have to work with
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
