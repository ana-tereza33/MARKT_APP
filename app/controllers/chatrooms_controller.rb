class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    chatroom = Chatroom.find_by(user_id: current_user.id, farmer_id: params[:chatroom][:farmer_id])

    unless chatroom.nil?
      farmer_on_page = Farmer.find(params[:chatroom][:farmer_id])
      chatroom = Chatroom.find_by(user_id: farmer_on_page.user.id, farmer_id: current_user.farmer.id)
    end
    
    unless chatroom.nil?
      redirect_to chatroom_path(chatroom)
    else

      @chatroom = Chatroom.new(chatroom_params)
      @chatroom.save!
      redirect_to chatroom_path(@chatroom)
    end
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:user_id, :farmer_id)
  end
end
