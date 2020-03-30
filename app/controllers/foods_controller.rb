class FoodsController < ApplicationController
  def index
      foods = FoodService.new
  end
end
