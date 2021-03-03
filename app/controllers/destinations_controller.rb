class DestinationsController < ApplicationController
  def index
    @destinations = Destination.all
  end

  def show
    @destination = Destination.find(params[:id])
    @posts = @destination.most_recent_posts
    @featured = @destination.most_liked
    @average_age = @destination.average_blogger_age
  end
end
