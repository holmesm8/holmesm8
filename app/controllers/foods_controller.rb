class FoodsController < ApplicationController
  def index
    @data = FoodService.new.foods(params["q"])[:foods][0..9]
  end
end
