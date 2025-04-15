# frozen_string_literal: true

require 'cgi'

puts CGI.escape('Wao hello/test & yes')
puts CGI.escapeHTML('a < 100 && b > 200')
