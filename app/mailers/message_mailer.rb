class MessageMailer < ActionMailer::Base

  def message_email(name, email, message)
    @name = name
    @email = email
    @message = message

    mail(:to => "timur.bazhirov@gmail.com", :from => @email, :subject => "#{name} contacted Lonesome Giant") 
    mail(:to => "hellocharlien@hotmail.com", :from => @email, :subject => "#{name} contacted Lonesome Giant") 
  end
end
