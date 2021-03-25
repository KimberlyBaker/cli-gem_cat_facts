require 'open-uri'
require 'net/http'
require 'json'

def api
    url = "https://cat-fact.herokuapp.com/facts"
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    JSON.parse(response.body)
end