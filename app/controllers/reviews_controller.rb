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
  full_sanitizer = Rails::Html::FullSanitizer.new
  sanitized_review = review_params.dup
  sanitized_review[:comments] = full_sanitizer.sanitize(review_params[:comments])
  @review = current_user.reviews.build(sanitized_review)
     if  current_user.save
  redirect_to book_review_path(@review.book, @review)  
    else 
     render :new 
   end
  end
   def show
   @review =Review.find(params[:id])
  end



  private
  def review_params
  params.require(:review).permit(:comments,:status,:user_id,:book_id)
  end


end
