require 'uri'
require 'net/http'
require_relative 'bot'

class Jokes
  @jokes = nil

  def initialize
    @jokes = new_request
  end

  def new_request
    url = 'https://official-joke-api.appspot.com/jokes/random'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end

  def newjoke
    @jokes
  end
end
