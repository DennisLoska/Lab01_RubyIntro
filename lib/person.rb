class Person
# Fields
  attr_accessor :name, :hobbies

# Constructor
  def initialize(hash)
    if (hash != nil)
      hash.each do |k, v|
        instance_variable_set("@#{k}", v.to_s)
      end
      @hobbies = @hobbies.split(",")
    end
  end

  def self.friendslist(persons)
    arr = persons
    hashArray = Array.new
    for p in arr
      for hobby in p.hobbies
        temp_hash = {hobby: hobby, value: p.name}
        hashArray.push(temp_hash)
      end
      sortedHashArray = hashArray.group_by {|k| k[:hobbies]}
      puts hashArray
      puts "-------------------------------"
      puts sortedHashArray.to_a
    end
    puts hashArray
  end

  def showCommonHobbies(personToCheck)
    puts @hobbies & personToCheck.hobbies
  end
end

# Gedöns 
p = Person.new(name: "Donald", hobbies: "Money, Bathing")
p1 = Person.new(name: "Paul", hobbies: "Money, Bathing ")
p2 = Person.new(name: " Lena ", hobbies: "Money, Bathing ")
p3 = Person.new(name: " Klaus ", hobbies: " , Bathing ")
p4 = Person.new(name: " Peter ", hobbies: "Money, Bathing ")

persons_arr = [p, p1, p2, p3, p4]
Person.friendslist(persons_arr)


# User Story 1
#puts " What is your name? "
#p.name = gets.chomp
#puts " What are your hobbies? "
#p.hobbies = gets.chomp
#puts p.name + " - hobbies : "
#puts p.hobbies
# END of user story 1