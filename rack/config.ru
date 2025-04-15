# frozen_string_literal: true

require 'rack'
require 'webrick'

app = proc do |_env|
  [
    200,
    { 'content-type' => 'text/plain' },
    ['Hello, Rack world!']
  ]
end

run app
