class Admin::SearchController < ApplicationController
	before_action :authenticate_admin!

	def search
		@model = params["search"]["model"]
		@content = params["search"]["content"]
		@method = params["search"]["method"]
		@records = search_for(@model, @content, @method)
	end

	private
	def search_for(model, content, method)
		if model == 'employee'
			if method == 'forward'
				Employee.where('first_name LIKE ? or last_name LIKE ? or first_name_kana LIKE ? or last_name_kana LIKE ?', content+'%', content+'%', content+'%', content+'%')
			elsif method == 'backward'
				Employee.where('first_name LIKE ? or last_name LIKE ? or first_name_kana LIKE ? or last_name_kana LIKE ?', '%'+content, '%'+content, '%'+content, '%'+content)
			else
				Employee.where('first_name LIKE ? or last_name LIKE ? or first_name_kana LIKE ? or last_name_kana LIKE ?', '%'+content+'%', '%'+content+'%', '%'+content+'%', '%'+content+'%')
			end
		elsif model == 'menu'
			if method == 'forward'
				Menu.where('name LIKE ?', content+'%')
			elsif method == 'backward'
				Menu.where('name LIKE ?', '%'+content)
			else
				Menu.where('name LIKE ?', '%'+content+'%')
			end
		end
	end
end
