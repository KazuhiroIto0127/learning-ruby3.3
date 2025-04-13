#!/opt/homebrew/bin/ruby
require "cgi"

COOKIE_NAME = "chocolate_chip"

cgi = CGI.new
values = cgi.cookies[COOKIE_NAME]

msg = if values.empty?
  "No cookies found"
else
  "Cookies found: #{values[0]}"
end

cookie = CGI::Cookie.new(COOKIE_NAME, Time.now.to_s)
cookie.expires = Time.now + 30 * 24 * 3600
cgi.out("cookie" => cookie) { msg }
