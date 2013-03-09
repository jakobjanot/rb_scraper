require 'celerity'

module Scraper
  class ELoungeCom
    def scrape(query=nil)
      query = "harry+potter"
      browser = Celerity::Browser.new(:resynchronize => true)
      url = "http://www.elounge.com/Pages/Search2.aspx?search=#{query}"
      browser.goto(url)
      
      table_prod_list = browser.table(:id => "ctl00_MCPH_ProductList2_1_DataList1")
      
      puts table_prod_list.id
      rows = table_prod_list.rows
      puts rows[1]
=begin
      rows = rows.select{|r| r[:class] == "productListTbl"}
      puts rows
      rows.each do |row|
        puts row.td.div(:class => "NormalContentTitleStyle").text
      end
=end      
    end
  end  
end

Scraper::ELoungeCom.new.scrape("harry+potter")
