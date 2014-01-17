require 'sinatra'
require 'json'

get '*' do |path|
  eval(File.read(".#{path}.rb")).to_json
end
