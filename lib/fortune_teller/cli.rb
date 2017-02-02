class FortuneTeller::CLI
  def call
    puts "      *       *       *         "
    puts "   *          **            *   "
    puts "      *       ***    *          "
    puts "   WELCONE     ****            "
    puts "     TO          ****       *    "
    puts "    YOUR            ****        "
    puts "   FORTUNE       *    ****"
    puts "   TELLER                ***     "
    puts "           *                 ***"
    puts "    *                              **"
    puts "Do you want to know what your horoscope tells you today??"
    horoscope_list
    puts "**************************************************"
    menu
    puts "**************************************************"
    see_you
  end
  def horoscope_list
    FortuneTeller::HoroscopeScraping.scrape_nypost_horoscope
    @horoscopes=FortuneTeller::Horoscope.all
    @horoscopes.each.with_index(1) do |hs, i|
     puts "#{i}. #{hs.name}"
     puts "  #{hs.date}"
    end
  end
  def menu
    input=nil
    while input != "exit"
     puts "selecte your horoscope enter a number or type exit"
     puts "**************************************************"
    input = gets.strip.downcase
    puts " "
      if input=="list"
       horoscope_list
      elsif input.to_i > 0 && input.to_i <= 12
        puts " Your horoscope today:*** #{@horoscopes[input.to_i-1].content}**"
        puts "**************************************************"
      else
       puts "not included select a number or type list or exit."
       puts"***************************************************"
      end
    end
  end
  def see_you
    puts "Thank you for using our application. See you next time!"
    puts "***     *** "
    puts "*    *    *"
    puts " * BYE!! *"
    puts "  *    *"
    puts "     *"
  end
end
