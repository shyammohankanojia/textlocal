require "textlocal/version"
require "rubygems"
require "net/https"
require "uri"
require "json"

module Textlocal
  class Sms
    def self.send(message, numbers)
      localtext_user  = ENV['LOCALTEXT_USER']
      api_hash        = ENV['API_HASH']
      sender          = ENV['SENDER']

      raise ArgumentError, 'Set your localtext_user, api_hash, or sender for localtext' unless localtext_user && api_hash && sender

      requested_url = 'http://api.textlocal.in/send/?'
      uri = URI.parse(requested_url)
      http = Net::HTTP.start(uri.host, uri.port)
      request = Net::HTTP::Get.new(uri.request_uri)
      res = Net::HTTP.post_form(uri, 'username' => localtext_user, 'hash' => api_hash, 'message' => message, 'sender' => sender, 'numbers' => numbers)
      response = JSON.parse(res.body)
      puts (response)
    end
  end

end
