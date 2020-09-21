class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!
  def top
    @orders = Order.where(created_at: Time.now.all_day).reverse_order
  end
end
