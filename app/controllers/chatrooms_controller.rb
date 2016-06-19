class ChatroomsController << ApplicationController

  def index
    @chatrooms = Chatrooms.all
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    @chatroom = current_user.chatrooms.build(chatroom_params)

    if @chatroom.save!
      flash[:success] = 'Chat room added!'
      redirect_to chat_rooms_path
    else
      render 'new'
    end
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:title)
  end

end