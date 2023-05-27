class Character
  attr_reader :name, 
              :photo_url,
              :allies, 
              :enemies,
              :affiliation

  def initialize(data)
    @name         = data[:name]
    @photo_url    = data[:photoUrl]
    @allies       = format_collection(data[:allies])
    @enemies      = format_collection(data[:enemies])
    @affiliation  = data[:affiliation]
  end
end 

def format_collection(collection)
  if collection.empty?
    "None"
  else
    collection.join(", ")
  end
end