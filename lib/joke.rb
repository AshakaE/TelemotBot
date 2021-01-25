require 'uri'
require 'net/http'
require_relative 'bot'

class Jokes
  @jokes = nil

  def initialize
    @jokes = make_the_request
  end

  def make_the_request
    url = 'https://api.yomomma.info/'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end

  def newjoke
    @jokes
  end
end
