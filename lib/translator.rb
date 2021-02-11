require yaml

def load_library(file)
  return YAML.load_file(file)
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning(file, name)
  emoticons = load_library(file)
  dict = {}
  dict["angel"] = {"english" => "", "japanese"=> ""}
  dict["angry"] = {"english"=> "", "japanese"=> ""}
  dict["bored"] = {"english"=> "", "japanese"=> ""}
  dict["confused"] = {"english"=> "", "japanese"=> ""}
  dict["embarrassed"] = {"english"=> "", "japanese"=> ""}
  dict["fish"] = {"english"=>"", "japanese"=>""}
  dict["glasses"] = {"english"=> "", "japanese"=> ""}
  dict["grinning"] = {"english"=> "", "japanese"=> ""}
  dict["happy"] = {"english"=> "", "japanese"=> ""}
  dict["kiss"] = {"english"=> "", "japanese"=> ""}
  dict["sad"] = {"english"=> "", "japanese"=>""}
  dict["surprised"] = {"english"=>"", "japanese"=> ""}
  dict["wink"] = {"english"=> "", "japanese"=> ""}

  dict["angel"]["english"] = emoticons["angel"][0]
  dict["angry"]["english"] = emoticons["angry"][0]
  dict["bored"]["english"] = emoticons["bored"][0]
  dict["confused"]["english"] = emoticons["confused"][0]
  dict["embarrassed"]["english"] = emoticons["embarrassed"][0]
  dict["fish"]["english"] = emoticons["fish"][0]
  dict["glasses"]["english"] = emoticons["glasses"][0]
  dict["grinning"]["english"] = emoticons["grinning"][0]
  dict["happy"]["english"] = emoticons["happy"][0]
  dict["kiss"]["english"] = emoticons["kiss"][0]
  dict["sad"]["english"] = emoticons["sad"][0]
  dict["surprised"]["english"] = emoticons["surprised"][0]
  dict["wink"]["english"] = emoticons["wink"][0]

  emoticons.each do |text, arr|
    if(arr[1] == name)
      return text
    end
  end


end

puts get_english_meaning("./lib/emoticons.yml", "(Ｔ▽Ｔ)")
puts get_english_meaning("./lib/emoticons.yml", "☜(⌒▽⌒)☞")
