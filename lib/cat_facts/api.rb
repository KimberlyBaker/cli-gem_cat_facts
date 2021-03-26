require 'open-uri'
require 'net/http'
require 'json'

class GetCatFacts

    def get_cat_facts
        url = "https://cat-fact.herokuapp.com/facts"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        JSON.parse(response.body)
    end

end

#facts = GetCatFacts.new.get_cat_facts
#puts facts

