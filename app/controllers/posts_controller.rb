class PostsController < ApplicationController
	 before_action :load_post, only: [:show, :edit, :update, :destroy]

  def index
  	@model = Post.all

  end

  def show
    @reply = Reply.new

  end

  def edit
  end

  def new 
  	@model = Post.new
  end
  
  def create
  	@model = Post.new(post_params)
   if @model.save 
   	 redirect_to posts_path
   	end
  end

  def update
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
  



  def load_post
  	@model = Post.find(params[:id])
  end
end
