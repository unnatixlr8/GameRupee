class HomeController < ApplicationController
  def index
  end

  def search
    search_term = params[:query]
    response = HTTParty.get("https://storeedgefd.dsx.mp.microsoft.com/v9.0/pages/searchResults?appVersion=22203.1401.0.0&market=IN&locale=en&deviceFamily=windows.desktop&query=#{search_term}")
    @response = response.parsed_response
  end
end

