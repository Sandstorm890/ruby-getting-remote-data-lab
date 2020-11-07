require 'net/http'
require 'open-uri'
require 'json'
require "pry"

class GetRequester

    def initialize(url)
        @url = url.to_s
    end

    def parse_json
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        JSON.parse(response.body)
        # response.body
        # binding.pry
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
        # binding.pry
    end
end