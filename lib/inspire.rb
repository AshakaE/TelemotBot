require 'telegram/bot'
require 'net/http'
require 'json'
require_relative 'bot'

class Inspire
  @values = nil

  def initialize
    @values = new_request
  end

  def new_request
    url = 'https://type.fit/api/quotes'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end

  def select_random
    @values = @values.sample
    @values
  end
end
