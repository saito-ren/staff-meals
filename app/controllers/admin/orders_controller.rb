class Admin::OrdersController < ApplicationController
  def index
  	if params[:employee_id]
  		@emproyee = Emproyee.find(params[:employee_id])
  		@orders = @emproyee.orders.page(params[:page]).reverse_order
  	else
  		@orders = Order.all.page(params[:page]).reverse_order
  	end
  end
end