require 'sinatra'
require 'json'

API = '/api/v1'.freeze

def json(path)
  path_with_req_method = path.gsub(API, "#{API}/#{request_method}")
  ruby_file = ".#{path_with_req_method}.rb"

  return "#{ruby_file} is absent" unless File.exists?(ruby_file)

  eval(File.read(ruby_file)).to_json
end

def request_method
  @request_method ||= env['REQUEST_METHOD'].downcase
end

get '*' do |path|
  json(path)
end

post '*' do |path|
  json(path)
end
