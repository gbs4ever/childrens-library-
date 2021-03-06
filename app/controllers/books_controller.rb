class BooksController < ApplicationController
  
  def index
   if params[:search] 
  @books = Book.contains( params[:search])
  elsif params[:filter]
    @books = Book.send(params[:filter].downcase)
    else
    @books = Book.all
    end
  end

  def new
   @book = Book.new 
  end
  def create

    @book = current_user.books.build(book_params) 
      
    if   current_user.save
     
   
      redirect_to book_path(@book)
    else
      render :new 
    end
  end
  def show
   # binding.pry
    @book = Book.find(params[:id])
     respond_to do |format|
        format.html { render :show}
        format.json { render json: @book}
    end
  end
  def edit
    @book = Book.find(params[:id])
  end
  def update

     @book=Book.find(params[:id])
    if @book.update(book_params)
    redirect_to  book_path(@book)
    else 
      render :edit
   
    end
  end
  def destroy
   @book = Book.find(params[:id])
   @book.reviews.destroy if @book.reviews
    @book.destroy
    
   redirect_to books_path #notice: "Delete success"
  end
 
 
 
  private
  def book_params
    params.require(:book).permit(:title,:author,:user_id)
  end

end
