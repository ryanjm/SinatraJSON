require 'json'

def read_people
  people_files = Dir.entries("./people").select {|f| f.end_with? ".json" }
  people_files.each do |file|
    yield JSON.parse(IO.readlines("./people/"+file).join)
  end
end

def names
  names = []
  read_people { |person| names << person["name"] }
  names
end

def find(name)
  p = nil
  read_people { |person| p = person if person["name"] == name }
  p
end
