class Employee::OrdersController < ApplicationController
    def index
    	@orders = Order.where(employee_id: current_employee.id).page(params[:page]).per(8)
    end

	def create
		@order = Order.new(order_params)
		@order.save
		redirect_to employee_orders_thank_path
	end

	def thank
	end

	private
	def order_params
		params.require(:order).permit(:menu_id, :employee_id)
	end
end
