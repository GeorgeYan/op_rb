require 'nokogiri'
require 'open-uri'
require 'csv'

i = 2
csv = CSV.open("output.csv", 'w')
for i in 1..2
  doc = Nokogiri::HTML(open("http://www.dcxtw.com/xintuo/_xintuo_cp.php?cppage=#{i}"), nil, "utf8")


  doc.xpath('//table//tr').each do |row|
    tarray = []
    row.xpath('td').each do |cell|
      tarray << cell.text
    end
    csv << tarray
  end

end
csv.close
