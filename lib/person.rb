class Person
  attr_accessor :name, :hobbies

  def initialize
    @name = name
    @hobbies = hobbies
  end

  def self.friendslist(persons)
  end

  def hobbies=(hobbies)
    hobbies.split(',')
    Array.new.each do |hobby|
      hobbies.push(hobby)
    end
    @hobbies = hobbies
  end
end

p = Person.new
puts "What is your name?"
p.name = gets.chomp
puts "What are your hobbies?"
p.hobbies = gets.chomp
puts  p.name + " - hobbies:"
printf p.hobbies

# END of first user story