class RepliesController < ApplicationController
            


  def show
  end

  def new
  end

  def edit
  end


  private

  def reply_params
  	params.require(:reply).permit(:name, :body)
  end

  def load_model
  	@model = Reply.find(params[:id])
  end
end
