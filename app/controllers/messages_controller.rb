class MessagesController < ApplicationController
  def index
    @messages = Message.all
    render json: @messages
  end

  def create
    @message = Message.new(params[:message])
    if @message.save
      render json: @message
    end
  end
end
