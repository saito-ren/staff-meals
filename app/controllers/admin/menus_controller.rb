class Admin::MenusController < ApplicationController
  def index
    @menus = Menu.all
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    @menu.save
    redirect_to admin_menus_path(@menu)
  end

  def show
  end

  def edit
  end

  def update
  end

private

def menu_params
  params.require(:menu).permit(:category_id, :name, :introduction, :image, :status)
end

end
