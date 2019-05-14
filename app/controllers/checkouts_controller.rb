class CheckoutsController < ApplicationController
  def index
     if current_user.admin
      @checkouts = Checkout.all
    else
      
      @checkouts= current_user.checkouts
      respond_to do |format|
        format.html { render :index}
        format.json { render json: @checkouts}
      end
   end
  end
  def new
   @checkout =   current_user.checkouts.build
  end
  def create
  
    var = current_user.checkouts.build(checkout_params)
    if  var.save  
    var[:taken_out] =  var.created_at
    var[:due_date] =  var. updated_at
    var.save
     redirect_to checkout_path(var)
    else
     render :new 
    end
  end
  def show
   @checkout = Checkout.find(params[:id])
    respond_to do |format|
        format.html { render :show}
        format.json { render json: @checkout}
      end
  end

  private

  def checkout_params
    params.require(:checkout).permit(:user_id,:book_id,:taken_out,:due_date)
  end
  


end




