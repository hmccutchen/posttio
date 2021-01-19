class PostsController < ApplicationController
	 before_action :load_post, only: [:show, :edit, :update, :destroy]

  def index
  	@model = Post.all
  end

  def show
  end

  def edit
  end

  def new 
  	@model = Post.new
  end
  
  def create
  	@model = Post.new(post_params)
   if @model.save 
   	 redirect_to post_path
   	end
  end

  def destroy
  end

  private


  def post_params
  	params.require(:post).permit(:title, :body)
  end


  def load_post
  	@model = Post.find(params[:id])
  end
end
