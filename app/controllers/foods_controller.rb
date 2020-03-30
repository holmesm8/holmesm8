class FoodsController < ApplicationController
  def index
    test = FoodService.new
    test.food_search(params["q"])
  end


  # def search_params
  #   params.permit(:food)
  # end
end
