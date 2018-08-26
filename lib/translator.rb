require "yaml"
require "pry"

def load_library(filepath)
  emoticons = YAML.load_file(filepath)
  dictionary = { "get_meaning" => {}, "get_emoticon" => {}}
  emoticons.each do |meaning, emoticon|
    dictionary["get_meaning"][emoticon[1]] = meaning
    dictionary["get_emoticon"][emoticon[0]] = emoticon[1]
  end
  dictionary
end

def get_japanese_emoticon(file, emoticon)
  library = load_library(file)
   if library["get_emoticon"].keys.include?(emoticon)
    library["get_emoticon"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning
  # code goes here
end