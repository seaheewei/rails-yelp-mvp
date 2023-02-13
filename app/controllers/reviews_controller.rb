class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to @review.restaurant
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
  end


end
