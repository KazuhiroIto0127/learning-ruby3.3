require 'rack'
require 'webrick'

app = Proc.new do |env|
  [
    200,
    { "content-type" => "text/plain" },
    ["Hello, Rack world!"]
  ]
end

run app
