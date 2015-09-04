class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    @products = Product.order(:title)
    increment_counter
    @time_now = Time.now.strftime('%H:%M %d/%m/%y')
  end

  def increment_counter
    @counter = session[:counter]
    #ternery operator: if @counter is nil then @counter = 1 else @counter += 1
    @counter.nil? ? @counter = 1 : @counter += 1
    session[:counter] = @counter
  end
end
