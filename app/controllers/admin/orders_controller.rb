class Admin::OrdersController < ApplicationController
	before_action :authenticate_admin!
  def index
  	if params[:employee_id]
  		@employee = Employee.find(params[:employee_id])
  		@orders = @employee.orders.page(params[:page]).reverse_order
  	else
  		@orders = Order.includes(:employee).page(params[:page]).reverse_order
  	end
  end
end
