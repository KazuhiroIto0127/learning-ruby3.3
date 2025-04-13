#!/opt/homebrew/bin/ruby
require 'cgi'
require 'erb'

cgi = CGI.new
get_text = cgi.params['get_text']&.first

template = File.read(File.dirname(__FILE__) + '/template.erb')
renderer = ERB.new(template)

puts cgi.header("type" => "text/html", "charset" => "utf-8")
puts renderer.result(binding)
