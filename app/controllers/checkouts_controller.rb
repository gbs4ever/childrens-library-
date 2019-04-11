class CheckoutsController < ApplicationController

  def new
   @checkout =   current_user.checkouts.build
  end
  def create
   var = current_user.checkouts.build(checkout_params)
   if  var.save  
     redirect_to checkout_path(var)
    else
     render :new 
    end
  end
  def show
   @checkout = Checkout.find(params[:id])
  end



 def checkout_params
    params.require(:checkout).permit(:user_id,:book_id)
  end





end




