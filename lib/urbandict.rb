require 'httpclient'
require 'json'
require_relative 'slang'

module UrbanDictionary
  module_function

  URL = 'http://api.urbandictionary.com/v0/define'

  # Gets the definitions for the word.
  # @param word [String] The word to define.
  # @return [Array<Slang>] An array of #{Slang} objects.
  # @raise [UrbanDictError]
  def define(word)
    params = {
      term: word
    }
    @client = HTTPClient.new if @client.nil?
    response = JSON.parse(@client.get(URI.parse(URL), params).body)
    if response.key?('error')
      raise UrbanDictError.new
    end
    ret = []
    response['list'].each do |hash|
      ret << Slang.new(hash)
    end
    ret
  end

  # Urban Dictionary does not provide any useful information, so we provide a note about alphanumeric characters which
  # is the only error I have encountered to date (1/18/2021).
  class UrbanDictError < StandardError
    def message
      'An error occurred. This could be because of issues with non-alphanumeric characters which are not handled ' \
        'properly by the Urban Dictionary API.'
    end
  end
end
