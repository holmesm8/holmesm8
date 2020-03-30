class FoodService

  def food_search(food)
    get_json("/search?api_key=kLnWVadwR9NYdjg8cyAIfEV1coAIZIv5seS7CAUh&generalSearchInput=Sweet+Potatoes/")
  end


private
  def get_json(url)
    response = conn.get(url)
    json_response = JSON.parse(response.body)
    require 'pry'; binding.pry
  end

  def conn
    Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1') 
  end
end
