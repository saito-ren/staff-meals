class Employee::EmployeesController < ApplicationController
  before_action :authenticate_employee!
  def show
    @employee = current_employee
  end

  def edit
    @employee = Employee.find(params[:id])
    if current_employee.id != @employee.id
      redirect_to employee_employee_path(@employee)
    end
  end

  def update
    @employee = current_employee
    if @employee.update(employee_params)
      redirect_to employee_employee_path(@employee), notice: "登録内容が更新されました。"
    else
      flash[:danger] = "登録内容を登録できませんでした。未入力を確認してください。"
      render :edit
    end
  end

  def top
    @categorys = Category.all
    @menus = Menu.order("RANDOM()").limit(1)
    @rank_menus = Menu.find(Order.group(:menu_id).order('count(menu_id) desc').limit(3).pluck(:menu_id))
  end

  def about
  end

  def withdraw
    @employee = current_employee
  end

  def hide
    @employee = current_employee
    @employee.update(status: true)
    reset_session
    redirect_to root_path, info: "お疲れ様でした。"
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :gender, :position, :email, :status)
  end
end
