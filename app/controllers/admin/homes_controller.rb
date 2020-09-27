class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!
  # 当日の注文だけ取得する
  def top
    @orders = Order.where(created_at: Time.now.all_day).reverse_order
  end
end
