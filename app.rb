require 'sinatra'
require './draperipsum'

get '/' do
  ipsum = DraperIpsum.new
  @ipsum = ipsum.sentences 8

  erb :index
end
