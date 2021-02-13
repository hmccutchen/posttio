class RepliesController < ApplicationController
            


  def show
    load_post
    load_model
  end

  def new
  	@model = Reply.new
  end

  def create
     load_post

  	@reply = @post.replies.build(reply_params)
     @reply.user_id = current_user.id
     
  	  if @reply.save
        respond_to do |format|
         format.js { render 'posts/show.js.erb'}
         format.html { }
        end
      end
    end


  private

  def reply_params
  	params.require(:reply).permit(:name, :body, :post_id)
  end

  def load_model
  	@model = Reply.find(params[:id])
  end

  def load_post
    @post = Post.find(params[:post_id])
  end
  
  
end
