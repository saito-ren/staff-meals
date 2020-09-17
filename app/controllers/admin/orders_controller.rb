class Admin::OrdersController < ApplicationController
	before_action :authenticate_admin!
  def index
  	path = Rails.application.routes.recognize_path(request.referer)
  	path_controller = path[:controller]
  	path_action = path[:action]
  	if path_controller == "admin/employees" && path_action == "show"
  		@orders = Order.where(employee_id: path[:id]).page(params[:page]).reverse_order
  	else
  		@orders = Order.includes(:employee).page(params[:page]).reverse_order
  	end
  end
end
