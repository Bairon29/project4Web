class ReviewsController < ApplicationController

    def create
       @review = Review.new(name: params["reviews"][:name], model: params["reviews"][:model], review: params["reviews"][:review], modelling3d_id: params["reviews"][:id].to_i)
      if @review.save
      flash[:notice] = "Successfully posted review"
      else
        flash[:notice] = "Write a review otherwise DO NOT CLICK IT AGAIN"
      end
      redirect_back(fallback_location: "/modelling3ds")
    end
end
