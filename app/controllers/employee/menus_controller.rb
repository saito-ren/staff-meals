class Employee::MenusController < ApplicationController
	def index
		@categorys = Category.all
		if params[:category_id]
		   @category = Category.find(params[:category_id])
		   @menus = @category.menus
		else
			@menus = Menu.page(params[:page]).reverse_order
		end
	end

	def show
		@category = Category.all
		@menu = Menu.find(params[:id])
	end

end
