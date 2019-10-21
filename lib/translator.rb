require "pry"
require "yaml"
def load_library (file)
  emoticons = YAML.load_file (file)
  
  new_hash ={}
  new_hash["get_meaning"] = {}
  new_hash["get_emoticon"] ={}
  emoticons.each do |meaning,emoticons_array|
     #binding.pry
    new_hash["get_emoticon"][emoticons_array[0]]= emoticons[meaning][1]
  
   new_hash["get_meaning"][emoticons_array[1]]= meaning 
  end
  #binding.pry
    return new_hash
end
  
def get_japanese_emoticon(path, emoticon)
  emoticons = load_library(path) #call load_library
  result = emoticons["get_emoticon"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoticon)
  emoticons = load_library(path)
  result = emoticons["get_meaning"][emoticon] 
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end










