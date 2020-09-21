class Admin::EmployeesController < ApplicationController
  before_action :authenticate_admin!
  def index
    @employees = Employee.page(params[:page]).per(5)
  end

  def show
    @employee = Employee.find(params[:id])
  end
end
