class Admin::CategorysController < ApplicationController
  def index
  	@category = Category.new
  	@categorys = Category.all
  end

  def create
  	@category = Category.new(category_params)
  	if @category.save
  	  redirect_to request.referer, notice: "登録されました"
  	else
      redirect_to request.referer, notice: "カテゴリー名が空欄です"
    end
  end

private

def category_params
	params.require(:category).permit(:name, :image)
end

end
