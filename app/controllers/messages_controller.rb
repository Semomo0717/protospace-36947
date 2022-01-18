class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to prototype_path(@message.prototype)
    else
      @prototype = @message.prototype
      @message = @prototype.messages
      render "prototypes/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end
