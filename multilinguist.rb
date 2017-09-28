require 'pry'
require 'httparty'
require 'json'


class Multilinguist  # the class of people who speak lots of languages

  TRANSLTR_BASE_URL = "http://bitmakertranslate.herokuapp.com"
  COUNTRIES_BASE_URL = "https://restcountries.eu/rest/v2/name"
  #{name}?fullText=true
  #?text=The%20total%20is%2020485&to=ja&from=en


  # Initializes the multilinguist's @current_lang to 'en'

  # @return [Multilinguist] A new instance of Multilinguist

  def initialize
    @current_lang = 'en'

  end

  def language_in(country_name)
    params = {query: {fullText: 'true'}}
    response = HTTParty.get("#{COUNTRIES_BASE_URL}/#{country_name}", params)
    json_response = JSON.parse(response.body)
    json_response.first['languages'].first['iso639_1']
  end

  def travel_to(country_name)
    local_lang = language_in(country_name)
    @current_lang = local_lang
  end

  def spend?(hotel,air,food)
    total_spending = (hotel + air + food)*1.15
    puts "total spending is #{total_spending} incl tax"
  end

  def say_in_local_language(msg)
    params = {query: {text: msg, to: @current_lang, from: 'en'}}
    response = HTTParty.get(TRANSLTR_BASE_URL, params)
    json_response = JSON.parse(response.body)
    json_response['translationText']
  end

end

class MathGenius < Multilinguist

  def go_math_genius(num1,num2,num3)
    return "output is #{(num1 * num2 * num3).round(1)}"
  end

end


class Quote_Guy < Multilinguist

  #The second child class we're going to define represents a person who loves to memorize quotes and then travel the world.  Each instance of this class should have its own ever-growing collection of favourite quotes. It should add a new quote to its collection and select a random quote to share in the local language.
  def quote_machine
    puts "type in a quote to translate"
    msg = gets.chomp
    say_in_local_language(msg)
  end

  def random_quote_machine
    ar1 = ['do not put off today what you can do tomorrow', 'perfection is the enemy of progress', 'do what you can do for your country', 'life is a highway', 'communism is a cage looking for a bird']
    msg = ar1.sample
    puts "the random quote is: #{msg}. In #{@current_lang} you say: "
    say_in_local_language(msg)
  end



end


# ------------------------ end of classes

joe = Multilinguist.new

# joe.travel_to("Peru")
# p joe.say_in_local_language('Hi there, my name is')
#
# joe.travel_to("Germany")
# p joe.say_in_local_language('Hi there, my name is')
#
# joe  = MathGenius.new
# p joe.go_math_genius(1, 3.14, 5)
#
# joe.spend?(100,200,300)

mike = Quote_Guy.new #new for new instance

puts "which country do you want to visit?"
chosen_country = gets.chomp
mike.travel_to(chosen_country)
p mike.quote_machine

p mike.random_quote_machine










# INFO -------------

  # Uses the RestCountries API to look up one of the languages
  # spoken in a given country
  #
  # @param country_name [String] The full name of a country
  # @return [String] A 2 letter iso639_1 language code


  # Sets @current_lang to one of the languages spoken
  # in a given country
  #
  # @param country_name [String] The full name of a country
  # @return [String] The new value of @current_lang as a 2 letter iso639_1 code


#  (Roughly) translates msg into @current_lang using the Transltr API
  #
  # @param msg [String] A message to be translated
  # @return [String] A rough translation of msg
