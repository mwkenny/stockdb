class CartController < ApplicationController
 before_filter :authenticate_user!
  def add
    # get the id of the product
    id = params[:id]
    #create new cart if none exists
    if session[:cart] then
        cart = session[:cart]
    else
        session[:cart] = {}
        cart = session[:cart]
    end
    
    #increment the value if product in cart else set to 1
    
    if cart[id] then
        cart[id] = cart[id] + 1
    else
        cart[id] = 1
    end
    # redirect to cart display page
    redirect_to :action => :index
    
  end
  
  def clearCart
    # set session variables to nil and redirect
    session[:cart] = nil
    redirect_to :action => :index
  end
    
  def index
      #if there is a cart pass it to page for display
      # else pass an empty value
      if session[:cart] then      
        @cart = session[:cart]
      else
        @cart = {}
      end  
  end
  
  # def add
    # @cart.add_item params[:title]
    #session["cart"] = @cart.serialize
    #item = Item.find params[:title]

    #title.update_columns(stock_quantity: title.quantity - 1)

    #redirect_to :back, notice: "Added #{title.name} to cart."
 #end
 
 
 
  
end