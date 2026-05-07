class ConversationsController < ApplicationController
  def index
    @conversations = Conversation.order(created_at: :desc)
    @conversation = Conversation.new
  end

  def create
    @conversation = Conversation.new(conversation_params)
    if @conversation.save
      redirect_to root_path
    else
      @conversations = Conversation.order(created_at: :desc)
      render :index, status: :unprocessable_entity
    end
  end

  private

  def conversation_params
    params.require(:conversation).permit(:person, :company, :role, :source, :energy, :engagement, :notes, :next_action)
  end
end
