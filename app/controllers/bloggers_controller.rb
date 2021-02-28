class BloggersController < ApplicationController
  def index
    @bloggers = Blogger.all
  end

  def new
    @blogger = Blogger.new
  end

  def show
    @blogger = Blogger.find(params[:id])
  end

  def create
    blogger_params = params.require(:blogger).permit(:name, :bio, :age)
    @blogger = Blogger.create(blogger_params)
    redirect_to blogger_path(@blogger)
  end
end
