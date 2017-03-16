class MessagesController < ApplicationController
    def new
      @message = Message.new
    end

    def destroy
      @message = Message.find(params[:id])
      @message.delete
      flash[:notice] ="Message deleted"
      redirect_to('/posts')
    end

    def create
      @message = Message.new(message_params)
      if @message.save
        flash[:notice] ="message created"
        redirect_to('/posts')
      else
        render('/posts/new')
      end
    end

    private

    def post_params
      params.require(:message).permit(:message, :user_id)
    end


  end

end
