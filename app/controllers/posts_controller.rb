class PostsController < ApplicationController
  before_action :authenticate_user!
	 before_action :load_post, only: [:show, :edit, :update, :destroy]
   
  def index
  	@model = Post.all

  end

  def show
    @reply = Reply.new

  end

  def edit
    
  end
  
  def user_posts
    current_user_posts
  end

  def new 
  	@model = Post.new
  end
  
  def create
  	@model = current_user.posts.new(post_params)
   if @model.save 
   	 redirect_to posts_path
   end
  end

  def update
    @model.update(post_params)
    if @model.save
      redirect_to user_posts_path(current_user)
    end
  end

  def destroy
  	@model.destroy
  	if @model.destroy
  		redirect_to posts_path
  	end
  end

  private


  def post_params
  	params.require(:post).permit(:title, :body)
  end
  
 def current_user_posts
   @model = current_user.posts
 end


  def load_post
  	@model = Post.find(params[:id])
  end
end
