# Lab Report 01 - Lab Startup and Ruby Finger Exercises

_Authors: Dennis Loska, Tony Dorfmeister, Ailee - 10.10.2017_

## SETUP: Git & Github (Part 1 & 2)

Wir haben unser gemeinsames Repository auf Github erstellt:

https://github.com/DennisLoska/rubyIntro

## Part 3: Ruby Finger Exercises

Als Grundlage für das Projekt dient das Startup Repository:

https://github.com/htw-imi-info3/lab-01-ruby-exercise


### 1. Hobby Matcher

#### Story 1: As a User of the Service I want to be able to enter my Hobbies as a comma-separated list.

Zunächst wird der User Nach seinem Namen gefragt und kann anschließend seine Hobbies angeben, welche in der Klasse anschließend in einem String-Array gespeichert
werden. Die Abfrage erfolgt durch das Abfangen von Input aus der Konsole, nachdem das Script gestartet wurde.

```ruby
puts "What is your name?"
p.name = gets.chomp
puts "What are your hobbies?"
p.hobbies = gets.chomp

```

Der Code in der Klasse zum Speichern der Eingabe sieht so aus: 

```ruby
class Person
# ...
# Constructor
  def initialize(hash)
    @name = name
    @hobbies = hobbies
  end
# Class Methods
  def hobbies=(hobbies)
    hobbies.split(",")
    @hobbies = hobbies.split(",")
  end
end

p = Person.new(name: "Donald", hobbies: "Money, Bathing")
```

Es wird eine neue Person **p** anhand der übergebenen Daten erstellt, indem der Name und die Hobbies als Parameter in den Klassenkonstruktor bzw. die initialize-Methode übergeben wird. Der String für die Hobbies wird gesplittet und anschließend wieder in _@hobbies_ gespeichert.

#### Story 2: As a User of the Service I want to see a list with People with whom I share hobbies including the hobbies we share, ordered by the number of shared hobbies (descending).



### 2. Initialization from a hash
