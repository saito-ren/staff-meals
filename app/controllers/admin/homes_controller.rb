class Admin::HomesController < ApplicationController
  def top
  	@orders = Order.where(created_at: Time.now.all_day)
  end
end
