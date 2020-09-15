class Admin::MenusController < ApplicationController
  before_action :authenticate_admin!
  def index
    @menus = Menu.page(params[:page]).per(8)
    @categorys = Category.all
  end

  def new
    @menu = Menu.new
    @categorys = Category.all
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
       redirect_to admin_menus_path(@menu), notice: "登録されました"
     else
      @categorys = Category.all
      render 'new'
    end
  end

  def show
    @menu = Menu.find(params[:id])
  end

  def edit
    @menu = Menu.find(params[:id])
    @categorys = Category.all
  end

  def update
    @menu = Menu.find(params[:id])
     if @menu.update(menu_params)
         redirect_to admin_menu_path(@menu), notice: "更新されました"
      else
         @categorys = Category.all
        　render 'edit', notice: "未入力はありませんか？"
      end

  end

private

def menu_params
  params.require(:menu).permit(:category_id, :name, :introduction, :image, :status)
end

end
