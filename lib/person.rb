class Person
# Fields
  attr_accessor :name, :hobbies

# Constructor
  def initialize(hash)
    @name = hash[:name]
    @hobbies = hash[:hobbies]
  end

def self.friendslist(persons)
end

# Class Methods
  def hobbies=(hobbies)
    hobbies.split(",")
    @hobbies = hobbies.split(",")
  end
end


# Gedöns 
p = Person.new(name: "Donald", hobbies: "Money, Bathing")

puts "What is your name?"
p.name = gets.chomp
puts "What are your hobbies?"
p.hobbies = gets.chomp
puts  p.name + " - hobbies:"
puts p.hobbies

# END of first user story