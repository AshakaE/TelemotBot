require 'uri'
require 'net/http'
require_relative 'bot'

class Jokes
  @jokes = nil

  def initialize
    @jokes = new_request
  end

  def new_request
    url = 'https://api.yomomma.info/'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end

  def newjoke
    @jokes
  end
end
