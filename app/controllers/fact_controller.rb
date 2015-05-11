require 'net/http'
require 'iso-639'

class FactController < ApplicationController
  WORD_API = "http://randomword.setgetgo.com/get.php"
  def index
    @word = get_word 
    @language = get_language 
  end

  def get_language 
    eng_names = ISO_639::ISO_639_1.sample[3]
    eng_names.match(/[^;]*/).to_s # return the first name
  end

  def get_word
    word = Net::HTTP.get(URI.parse(WORD_API)).split.first
  end
end
