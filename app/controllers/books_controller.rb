class BooksController < ApplicationController
  
  def index
    @books = Book.all
  end
  def new
   @book = Book.new 
  end
  def create
    @book=current_user.books.build(book_params) 
    if  current_user.save  
      redirect_to book_path(@book)
    else
      render :new 
    end
  end
  def show
    @book = Book.find(params[:id])
  end
  def edit
    @book = Book.find(params[:id])
  end
  def update

     @var=Book.find(params[:id])
    if @var.update(book_params)
    redirect_to  book_path(@var)
    else 
      #render :edit
       redirect_to edit_book_path(@var)
    end
  end
  def destroy
   @book = Book.find(params[:id])
    @book.destroy
   redirect_to books_path #notice: "Delete success"
  end
 
 
 
  private
  def book_params
    params.require(:book).permit(:title,:author,:user_id)
  end

end
