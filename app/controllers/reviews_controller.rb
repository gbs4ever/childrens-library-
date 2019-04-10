class ReviewsController < ApplicationController
  def index
  end
  def new 
 @review = Review.new 
    
  end
  def create
     binding.pry
    var =current_user.reviews.create(review_params)
   
  end



private
def review_params
params.require(:review).permit(:comments,:status,:user_id,:book_id)
end


end
