module FactHelper
  def dict_link(word)
    reference = "http://dictionary.reference.com/browse/"

    site = reference
    link_to word, "#{site}#{word}"
  end

  def lang_link(language)
    link_to language, "http://en.wikipedia.org/wiki/#{language}_language"
  end
end
