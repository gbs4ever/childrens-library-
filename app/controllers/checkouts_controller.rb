class CheckoutsController < ApplicationController
def index
   
   if current_user.admin

    @checkouts = Checkout.all
   else
    @checkouts= current_user.checkouts
   end
end
  def new
   @checkout =   current_user.checkouts.build
  end
  def create
    var = current_user.checkouts.build(checkout_params)
    var[:taken_out] = Date.parse("#{params[:taken_out]['day']}-#{params[:taken_out]['month']}-#{params[:taken_out]['year']}")
     
    var[:due_date] = Date.parse("#{params[:due_date]['day']}-#{params[:due_date]['month']}-#{params[:due_date]['year']}")
    if  var.save  
     redirect_to checkout_path(var)
    else
     render :new 
    end
  end
  def show
   @checkout = Checkout.find(params[:id])
  end

  private

  def checkout_params
    params.require(:checkout).permit(:user_id,:book_id,:taken_out,:due_date)
  end
  


end




