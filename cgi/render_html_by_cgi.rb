#!/opt/homebrew/bin/ruby
# frozen_string_literal: true

require 'cgi'

cgi = CGI.new('html5')
cgi.out do
  cgi.html do
    cgi.head { cgi.title { 'This is a test' } } +
      cgi.body do
        cgi.form do
          cgi.hr +
            cgi.h1 { 'A Form: ' } +
            cgi.textarea('get_text') +
            cgi.br +
            cgi.submit
        end
      end
  end
end
