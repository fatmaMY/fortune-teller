class FortuneTeller::HoroscopeScraping
#  attr_accessor :name, :date, :content
# @@all=[]
#   def self.today
#     @@all
#   end

def self.scrape_nypost_horoscope
  doc=Nokogiri::HTML(open("http://nypost.com/horoscopes/"))
  #horosc=[]
  doc.search("div#primary div.site-content>div.row article.box").each do |h|
   hs=FortuneTeller::Horoscope.new
    hs.name= h.search("header.entry-header>h3 a").text.strip
    hs.date = h.search("div.entry-meta p").text.strip
    hs.content=h.search("div.entry-content p").text.strip
  # @@all << hs
    end
 # @@all
end
end
