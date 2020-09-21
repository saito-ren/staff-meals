class Admin::CategorysController < ApplicationController
  before_action :authenticate_admin!

  def index
    @category = Category.new
    @categorys = Category.page(params[:page]).per(5)
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to request.referer, notice: "登録されました"
    else
      redirect_to request.referer, notice: "カテゴリー名が空欄です"
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to admin_categorys_path, notice: "更新されました"
    else
      redirect_to request.referer, notice: "カテゴリー名が未入力です"
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :image)
  end
end
