class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!
def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    respond_to do |format|
      format.html do
        flash[:notice] = "Your restaurant has been removed"
        redirect_to restaurants_path
      end
      format.js |
    end
  end
end
