class ContactController < ApplicationController
  before_action :authenticate_admin!, except: %i[new create]
  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
     @message = Message.new(message_params)
    if @message.save
      flash[:notice] = "Message sent succesfully!"
      redirect_to root_path
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    flash[:notice] = "Message deleted succesfully."
    redirect_to contact_index_path
  end

  private

  def message_params
    params.require(:message).permit(:author, :email, :body, :phone)
  end
end
