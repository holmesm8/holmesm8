class FoodService

  def foods
    get_json("")
  end

private
  def get_json(url)
    response = conn.get(url)
    json_response = JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1')
  end
end
