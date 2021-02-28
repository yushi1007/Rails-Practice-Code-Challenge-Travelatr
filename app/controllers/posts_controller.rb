class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @bloggers = Blogger.all
    @destination = Destination.all
  end

  def create
    post_params = params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
    @post = Post.create(post_params)
    redirect_to new_post_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit 
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    post_params = params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
    @post = Post.create(post_params)
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    Post.destroy(params[:id])
    redirect_to post_path
  end
end

