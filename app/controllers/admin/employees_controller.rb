class Admin::EmployeesController < ApplicationController
  def index
  	@employees = Employee.page(params[:page])
  end

  def show
  	@employee = Employee.find(params[:id])
  end
end
