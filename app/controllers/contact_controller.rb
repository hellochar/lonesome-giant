class ContactController < ApplicationController

  def index
    render
  end

  def send_email
    MessageMailer.message_email(params[:name], params[:email], params[:message]).deliver
  end
end
