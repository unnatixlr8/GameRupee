class HomeController < ApplicationController
  def index
  end

  def search
    search_term = "Cuphead"
    response = HTTParty.get("https://storeedgefd.dsx.mp.microsoft.com/v9.0/pages/searchResults?appVersion=22203.1401.0.0&market=IN&locale=en&deviceFamily=windows.desktop&query=#{search_term}")
    @response = response.parsed_response

    search_results = parsed_json['Payload']['PageObject']['RootModule']['Modules'][1]['Modules'][0]['Modules'][0]['Modules']
    # Iterate over the SearchResults array and extract the title and price for each result
    search_results.each do |result|
      title = result['Fields']['title']
      price = result['Fields']['price']
  end
end
