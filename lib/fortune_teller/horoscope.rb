class FortuneTeller::Horoscope
  attr_accessor :name, :date, :content
  def self.today
    self.scrape_nypost_horoscope
  end

def self.scrape_nypost_horoscope
  doc=Nokogiri::HTML(open("http://nypost.com/horoscopes/"))
  horosc=[]
  doc.search("div#primary div.site-content>div.row article.box").each do |h|
      hs=self.new
    hs.name = h.search("header.entry-header>h3 a").text.strip
    hs.date = h.search("div.entry-meta p").text.strip
    hs.content=h.search("div.entry-content p").text.strip
    horosc << hs
  end
  horosc
end
end
