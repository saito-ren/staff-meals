class Admin::EmployeesController < ApplicationController
  def index
  	@employees = Employee.page(params[:page]).per(5)
  end

  def show
  	@employee = Employee.find(params[:id])
  end
end
