class FoodService

  def foods(food)
    get_json("/fdc/v1/search?api_key=#{ENV['USDA_API_KEY']}&generalSearchInput=#{food}")
  end


private
  def get_json(url)
    response = conn.get(url)
    json_response = JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://api.nal.usda.gov/') 
  end
end
