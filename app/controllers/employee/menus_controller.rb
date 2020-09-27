class Employee::MenusController < ApplicationController
  def index
    @categorys = Category.all
    カテゴリー検索から来た場合とヘッダーから来た場合で取得内容を変える
    if params[:category_id]
      @category = Category.find(params[:category_id])
      @menus = @category.menus.page(params[:page]).reverse_order
    else
      @menus = Menu.page(params[:page]).per(6)
    end
  end

  def show
    @categorys = Category.all
    @menu = Menu.find(params[:id])
  end
end
