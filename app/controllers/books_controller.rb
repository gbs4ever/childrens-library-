class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  def new
   @book = Book.new 
  end
  def create
    if var=current_user.books.create(book_params) 
     redirect_to books_path(var)
  
    else
      #binding.pry
     #puts var.errors.full_messages_for(:title).first
     redirect_to  new_book_path
    end
  end
    def show
   
    @book = Book.find(params[:id])
    end
  def edit
    @book = Book.find(params[:id])
  end
  def update
    #binding.pry
     var=Book.find(params[:id])
    if var.update(book_params)
    redirect_to  books_path(var)
    else 
      render :edit
    end
  end

private
def book_params
params.require(:book).permit(:title,:author,:user_id)
end

end
