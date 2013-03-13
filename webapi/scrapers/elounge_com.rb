require 'celerity'

module Scraper
  class ELoungeCom
    def scrapeFreeText(query=nil)
      query = "harry+potter"
      browser = Celerity::Browser.new(:resynchronize => true)
      url = "http://www.elounge.com/Pages/Search2.aspx?search=#{query}"
      browser.goto(url)
      
      table_prod_list = browser.table(:id => "ctl00_MCPH_ProductList2_1_DataList1")
      table_prod_list.each do |row|
        puts row.tds[2].div(:class=>"NormalContentTitleStyle").a.text
        puts row.tds[2].table.div(:class => "NormalContentAuthorStyle").text
      end 
      
      
      puts table_prod_list.id
      rows = table_prod_list.rows
      puts rows[1]
    end
    
    
    def scrape(isbn=8702048515)
      url = "http://www.elounge.com/Pages/Search2.aspx?isbn=#{isbn}"
      browser = Celerity::Browser.new
      
      browser.goto(url)
      
      price = browser.span(:id => "ctl00_ctl00_MCPH_BCPH_ProductDetail1_lblPrice").text
      currency = browser.span(:class => "NormalPriceCurrencyStyle").text
      
      puts "#{isbn} koster #{price} #{currency}"
    end  
  end
end
Scraper::ELoungeCom.new.scrape
