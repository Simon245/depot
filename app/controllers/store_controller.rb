class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @time_now = Time.now.strftime('%H:%M %d/%m/%y ')
  end
end
