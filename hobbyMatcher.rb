
class Person
  attr_accessor :name, :hobbies

  # initialize() == Constructor
  def initialize()
  end

end

# create a new person
person = Person.new

# ask for users name
puts 'Hey there! Please tell me your name:'
person.name = gets.chomp
puts 'Hi ' + person.name + '!'

# ask for users hobbies
puts 'Now tell me your hobbies!'
hobbies_temp = gets.chomp
person.hobbies = hobbies_temp.split(', ')
puts person.hobbies
