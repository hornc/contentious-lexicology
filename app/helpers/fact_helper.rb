module FactHelper
  FREE_DICTIONARY = "http://www.thefreedictionary.com/"
  DICTIONARY_REFERENCE = "http://dictionary.reference.com/browse/"
  MERRIAM_WEBSTER = "http://www.merriam-webster.com/dictionary/"
  COLLINS = "http://www.collinsdictionary.com/spellcheck/english/"
  OXFORD = "http://www.oxforddictionaries.com/search?q="

  def dict_link(word)
    site = OXFORD
    link_to word, "#{site}#{word}"
  end

  def lang_link(language)
    link_to language, "http://en.wikipedia.org/wiki/#{language}#{ language.match(/[Ll]anguage/) ? '' : '_language'}"
  end
end
