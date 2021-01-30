require 'sinatra'

get '/' do
  redirect 'http://t.me/telemotBot', 303
end
