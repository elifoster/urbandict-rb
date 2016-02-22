require 'httpclient'
require 'json'
require_relative 'slang'

module UrbanDictionary
  module_function

  URL = 'http://api.urbandictionary.com/v0/define'

  # Gets the definitions for the word.
  # @param word [String] The word to define.
  # @return [Array<Slang>] An array of #{Slang} objects.
  def define(word)
    params = {
      term: word
    }
    @client = HTTPClient.new if @client.nil?
    response = JSON.parse(@client.get(URI.parse(URL), params).body)
    ret = []
    response['list'].each do |hash|
      ret << Slang.new(hash)
    end
    ret
  end
end