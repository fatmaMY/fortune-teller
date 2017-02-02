class FortuneTeller::HoroscopeScraping

def self.scrape_nypost_horoscope

  doc=Nokogiri::HTML(open("http://nypost.com/horoscopes/"))
  doc.search("div#primary div.site-content>div.row article.box").each do |h|
    hs=FortuneTeller::Horoscope.new
    hs.name= h.search("header.entry-header>h3 a").text.strip
    hs.date = h.search("div.entry-meta p").text.strip
    hs.content=h.search("div.entry-content p").text.strip

    end
end
end
