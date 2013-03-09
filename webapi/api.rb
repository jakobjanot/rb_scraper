require 'grape'



module BookScraper
  Dir["./scrapers/*.rb"].each { |scraper| require scraper }
  
  class API < Grape::API
    get 'scrapers' do
      {:name => "world"}
    end
    
  end
end