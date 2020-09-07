class Admin::CategorysController < ApplicationController
  def index
  	@category = Category.new
  	@categorys = Category.all
  end

  def create
  	@category = Category.new(category_params)
  	@category.save
  	redirect_to admin_categorys_path
  end

private

def category_params
	params.require(:category).permit(:name, :image)
end

end
