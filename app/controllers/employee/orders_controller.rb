class Employee::OrdersController < ApplicationController
    def index
    	@orders = Order.where(employee_id: current_employee.id).page(params[:page]).per(8)
    end

	def create
		@order = Order.new(employee_id: current_employee.id, menu_id: params[:menu_id])
		@order.save
		redirect_to employee_orders_thank_path
	end

	def thank
	end

end
