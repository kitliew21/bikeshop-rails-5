class UserMailer < ApplicationMailer
  default from: 'kitliew21@gmail.com'

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'kitliew21@gmail.com',
        :subject => "A new contact form message from #{name}")
  end
end