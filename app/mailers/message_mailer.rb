class MessageMailer < ActionMailer::Base

  def message_email(name, email, message)
    @name = name
    @email = email
    @message = message

    mail(:to => "timur.bazhirov@gmail.com, hellocharlien@hotmail.com", :from => "lonesomegiant@gmail.com", :subject => "#{name} contacted Lonesome Giant") 
  end
end
