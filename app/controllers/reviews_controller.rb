class ReviewsController < ApplicationController
  def index
    if current_user.admin
      @reviews = Review.all
    else
      redirect_to books_path
    end 
  end
  def new
    if params[:book_id]
      @book = Book.find(params[:book_id])
      @review  = @book.reviews.build  
    else
    @review = Review.new 
    end
  end
 
   
 
  def create
    current_user.reviews.build(review_params)
    if  current_user.save 
     redirect_to books_path  
    else 
     render :new 
   end
  end
   def show
     binding.pry
  end



  private
  def review_params
  params.require(:review).permit(:comments,:status,:user_id,:book_id)
  end


end
