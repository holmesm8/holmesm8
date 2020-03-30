require 'rails_helper'

RSpec.describe 'User food index' do
  it "can display foods associated with a search term" do
    visit "/"

    fill_in 'foods', with: 'sweet potatoes'
    click_button 'Search'

    expect(current_path).to eq('/foods')
    
  end
end

