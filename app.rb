require 'sinatra'
require './draperipsum'

get '/' do
  ipsum = DraperIpsum.new
  ipsum.sentences
end
