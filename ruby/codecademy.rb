
#Data types are : Numbers, Boolean, String
my_num =  25   # Add your code here!

my_boolean = true    # And here!

my_string =   "Ruby"  # Also here.

#Variables
my_num = 100

#Maths
#Addition (+)
#Subtraction (-)
#Multiplication (*)
#Division (/)
#Exponentiation (**)
#Modulo (%)

#'puts' and 'print'

puts "Hello affiché avec puts qui rajoute un retour à la ligne"

print "Affiché avec print qui ne rajoute pas un retour à la ligne"

puts "Hello affiché avec puts qui rajoute un retour à la ligne"

#The '.length' Method : (En : Summon = convoquer, appeler, invoquer e.g une méthode)

"La methode length renvoie le nombre de caractère de la chaine".length #Ici 61

#The '.reverse' Method
"La methode reverse renvoie une version de droite à gauche de la chaine de caractère".reverse
 
#the .upcase and .downcase methods convert a string to ALL UPPER CASE or all lower case, respectively.
puts "arouna".upcase
puts "AROUNA".downcase

#Single-Line Comments : #This a comment

#Multiline comments
=begin
If you start with =begin and end with =end, everything between those two expressions will be a comment. 
Another comment on another line !
=end

#Naming Conventions
=begin 
1 :  local variables : By convention, these variables should start with a lowercase letter and 
words should be separated by underscores, like "counter" and "masterful_method". 
Ruby won't stop you from starting your local variables with other symbols, 
such as capital letters, $s, or @s, but by convention these mean different things, 
so it's best to avoid confusion by doing what the Ruby community does.
=end


#Math : let's do some Math !

sum = 13 + 379
product = 923 * 15
quotient = 13209 / 17

#Strings and String Methods

name = "Dark VaDor"
name.downcase
name.reverse.upcase

#----------------------------------------------------------------------------


=begin

What You'll Be Building

This project will help you create a small program 
that will read a user's input and correct his or her capitalization. 
Users can provide an almost infinite range of input, 
so it makes our lives easier as programmers to make their input standard before doing anything with it.
=end

=begin
gets is the Ruby method that gets input from the user. 
When getting input, Ruby automatically adds a blank line (or newline) after each bit of input; 
chomp removes that extra line. 
(Your program will work fine without chomp, but you'll get extra blank lines everywhere.)
=end
#Prompting the User
print "What's your first name?"
first_name = gets.chomp
first_name.capitalize!

print "What's your last name?"
last_name = gets.chomp
last_name.capitalize! #capitalize, It capitalizes the first letter of a string 
                      #and makes the rest of the letters lower case. 
                      #the "!" change the value of variable last_name for the next call 
                      #by applying automatically last_name.capitalize

print "What city are you from?"
city = gets.chomp
city.capitalize!

print "What state or province are you from?"
state = gets.chomp
state.upcase!

puts "Your name is #{first_name} #{last_name} and you're from #{city}, #{state}!"

#---------------------------------------------------------------------------------
#How It Works : Control flow
#if statement
print "Integer please: "
user_num = Integer(gets.chomp)

if user_num < 0
  puts "You picked a negative integer!"
elsif user_num > 0
  puts "You picked a positive integer!"
else
  puts "You picked zero!"
end

#Unless
=begin
Sometimes you want to use control flow to check if something is false, rather than if it's true. 
You could reverse your if/else, 
but Ruby will do you one better: it will let you use an unless statement.

Let's say you don't want to eat unless you're hungry. That is, while you're not hungry, 
you write programs, but if you are hungry, you eat. You might write that program in Ruby like this:
=end

hungry = false

unless hungry
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end

problem = false
2.times do
    print "Good to go!" unless problem
    #problem = true
end

#Equal or Not?
is_true = 2 != 3

is_false = 2 == 3
#Less Than or Greater Than < <= > >=
#And &&
#Or ||
#Not !

#------------------------------------------------------------
=begin

What You'll Be Building

Now that we can direct our program using if / else statements, 
we can produce different results based on different user input.

In this project, 
we'll combine control flow with a few new Ruby string methods to Daffy Duckify a user's string, 
replacing each "s" with "th".

.include? method evaluates to true if it finds what it's looking for and false otherwise.
As a general rule, Ruby methods that end with ? evaluate to the boolean values true or false.

When we find "s", we want Ruby to replace every instance of "s" it finds with "th". 
We can do this with the .gsub! method, which stands for global substitution.

string_to_change.gsub!(/s/, "th")
=end

print "Thtring, pleathe!: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s" 
  user_input.gsub!(/s/, "th")
else
  puts "Nothing to do here!"
end
  
puts "Your string is: #{user_input}"


#--------------------------------------------------------------------
#Loops & Iterators
#1 The 'While' Loop

counter = 1
while counter < 11
  puts counter
  counter = counter + 1
end

#2 The 'Until' Loop.. a backwards while loop
counter = 1
until counter > 10
  puts counter
  counter += 1
end

#The 'For' Loop "..." means not to include the greatest number, ".." means include it 
for num in 1...10 #print 1 to 9
  puts num
end

#The Loop Method NB: do end can be replaced by {}

i = 20
loop {
  i -= 1
  print "#{i}"
  break if i <= 0
}

#Next! The "next" keyword can be used to skip over certain steps in the loop.

i = 20
loop do
  i -= 1
  next if (i%2) != 0 #skip to the next iteration if the number i is odd.
  print "#{i}"
  break if i <= 0
end

#Saving Multiple Values
#rmq just need my_array = [1,2,3,4,5] but I wanna play :)

my_array = []
for i in 1 .. 5
my_array << i
end

my_array

=begin
************The .each Iterator. ****************

syntax : object.each do |item| Do something end 

The variable name between | | can be anything you like: 
it's just a placeholder for each element of the object you're using .each on. 
You can also use the do keyword instead of {}

e.g :
# one way to loop
numbers.each { |item| puts item }

# another way to loop
numbers.each do |item|
  puts item
end
=end
array = [1,2,3,4,5]

array.each do |x|
  x += 10
  puts "#{x}"
end

#The .times Iterator
2.times {print "yolo"}

#--------------------------------------*****************-----------------------------
=begin
The .split Method :
=end
puts "Text to search through: "
text = gets.chomp
puts "Word to redact: "
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word != redact
    print word + " "
  else
    print "REDACTED "
  end
end

#----------------------------DATA STRUCTURES-------------------------------------
=begin
ARRAY :Here's something you might not have known: 
you can make an array of any collection of Ruby objects. 
You can make an array of booleans! An array of strings!
=end
#Acces by Index
demo_array = [100, 200, 300, 400, 500]

print demo_array[2]

#Arrays of Non-Numbers
string_array = ["a","c","d","f","o"]

#Arrays of Arrays
multi_d_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]] #two-dimensional

multi_d_array.each { |x| puts "#{x}\n" } 

my_2d_array = [[1,1,1,1],["a","b","n"], [true,false],[2,2,2,3]]


=begin
Introduction to Hashes : A hash is a collection of key-value pairs. Hash syntax looks like this:

hash = {
  key1 => value1,
  key2 => value2,
  key3 => value3
}

Values are assigned to keys using =>. You can use any Ruby object for a key or value.
=end

my_hash = { "name" => "Arouna",
  "age" => 21,
  "hungry?" => true
}

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]

=begin
Using Hash.new : Setting a variable equal to Hash.new creates a new, empty hash; 
it's the same as setting the variable equal to empty curly braces ({}).
=end

pets = Hash.new

#Adding to a Hash: We can add to a hash two ways: 
#if we created it using literal notation, 
#we can simply add a new key-value pair directly between the curly braces. 
#If we used Hash.new, we can add to the hash using bracket notation
#pets = Hash.new
pets ["chat"] = "minou"

#Accessing Hash Values
pets = Hash.new
pets ["chat"] = "minou"
puts pets["chat"]

#Iterating Over arrays end Hashes
friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }

#Iterating Over Multidimensional Arrays
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each { |i| 
puts i
    }
    #ou bien
s.each do | sub_array |
  sub_array.each do | y |
    puts y
  end
end

=begin
Iterating Over Hashes : When iterating over hashes, 
we need two placeholder variables to represent each key/value pair
=end
restaurant_menu = {
  "noodles" => 4,
  "soup" => 3,
  "salad" => 2
}

restaurant_menu.each do |item, price|
  puts "#{item}: #{price}"
end
#---------------Project : Create a Histogram------------------------
=begin

What You'll Be Building

In this project, we'll build a program that takes a user's input, 
then builds a hash from that input. 
Each key in the hash will be a word from the user; 
each value will be the number of times that word occurs. 
For example, 
if our program gets the string "the rain in Spain falls mainly on the plain," it will return 
the 2
falls 1
on 1
mainly 1
in 1
rain 1
plain 1
Spain 1
---------- visual representation of data like this is called a histogram------------------
If you have a hash with a default value, 
and you try to access a non-existent key, you get that default value.
=end

puts "Text please: "
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0) #Hash with a default value equal to zero
words.each { |word| frequencies[word] += 1 } #i.e frequencies ["#{word}"] += 1 
frequencies = frequencies.sort_by {|a, b| 
b #Sorting the Hash from the smallest to largest
} 
frequencies.reverse!#reverse to have largest to smallest
frequencies.each { |word, frequency| puts word + " " + frequency.to_s } 
#Note that we must first convert the value from a number to a string 
#using .to_s before we can concatenate it.


#my_way
puts "Veuillez saisir votre texte svp"
text = gets.chomp

words = text.split

frequencies = Hash.new(0)

words.each { |i|
frequencies ["#{i}"] += 1
}

frequencies = frequencies.sort_by do |x,y|
    y
end

frequencies.reverse!

frequencies.each do |a,b|
    puts ["#{a} #{b}"]
end

#------------------------------------------------Methods, Blocks, & Sorting----------------------------
=begin
Methods are defined using the keyword def (short for "define"). Methods have three parts:

    The header, which includes the def keyword, 
    the name of the method, 
    and any arguments the method takes. (We'll get to arguments in the next section)
    The body, which is the code block that describes the procedures the method carries out. 
    The body is indented two spaces by convention (as with for, if, elsif, and else statements)
    The method ends with the end keyword.
e.g : 
def puts_1_to_10
  (1..10).each { |i| puts i }
end
=end
def prime(n)
  puts "That's not an integer." unless n.is_a? Integer
  is_prime = true
  for i in 2..n-1
    if n % i == 0
      is_prime = false
    end
  end
  if is_prime
    puts "#{n} is prime!"
  else
    puts "#{n} is not prime."
  end
end

prime(2)
prime(9)
prime(11)
prime(51)
prime(97)

#splat arguments. 
#Splat arguments are arguments preceded by a *, 
#which signals to Ruby: 
#"Hey Ruby, I don't know how many arguments there are about to be, but it could be more than one."
def what_up(greeting, *bros)
  bros.each { |bro| puts "#{greeting}, #{bro}!" }
end
 
what_up("What up", "Justin", "Ben", "Kevin Sorbo")

#Let's Learn Return : 
#Sometimes we don't just want a method to print something to the console, 
#but we actually want that method to hand us (or another method!) back a value. 
#For that, we use return.
def add(a,b)
    return a + b
end

=begin
#Blocks : Blocks Are Like Nameless Methods
=end
1.times do
  puts "I'm a code block!"
end

1.times { puts "As am I!" }


#****
# block that capitalizes each string in the array
["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} 
# prints "Ryan", then "Jane"

#******
#Introduction to Sorting
my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2]
my_array.sort!

# library sorting code
books = ["Charlie and the Chocolate Factory", 
  "War and Peace", 
  "Utopia", 
  "A Brief History of Time", 
  "A Wrinkle in Time"
]

# How might we sort! the books in alphabetical order? 
books.sort!
#The Combined Comparison Operator : 
#The combined comparison operator looks like this: <=>. 
#It returns 0 if the first operand (item to be compared) equals the second, 
#1 if first operand is greater than the second, 
#and -1 if the first operand is less than the second. 
#A block that is passed into the sort method must return either 1, 0, -1. 
#It should return -1 if the first block parameter should come before the second, 
#1 if vice versa, 
#and 0 if they are of equal weight, 
#meaning one does not come before the other (i.e. if two values are equal).

book_1 = "A Wrinkle in Time"

book_2 = "A Brief History of Time"

book_1 <=> book_2


books = ["Charlie and the Chocolate Factory", 
  "War and Peace", 
  "Utopia", 
  "A Brief History of Time", 
  "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook|
firstBook <=> secondBook }

# Sort your books in descending order, in-place below
#books.reverse!

books.sort! { |firstBook, secondBook| secondBook <=> firstBook }


#-------------------Project : Ordering Your Library---------------------------------
=begin

What You'll Be Building

We noticed in the last lesson that .sort! didn't have a built-in way of handling sorting 
in reverse alphabetical order. Now that we know how to write our own Ruby methods, we can fix that!

=end
def alphabetize(arr, rev=false)
  if rev
    arr.sort { |item1, item2| item2 <=> item1 }
  else
    arr.sort { |item1, item2| item1 <=> item2 }
  end
end

books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]

puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"

#ou bien******************
def alphabetize(arr,rev=false)
    if rev
        arr.reverse!
    else
        arr.sort!
        end
end

numbers = [1,2,8,3]
puts alphabetize(numbers)

#Hashes and Symbols : 
=begin 
A Key of a Different Color

We can certainly use strings as Ruby hash keys; 
as we've seen, there's always more than one way to do something in Ruby. 
However, the Rubyist's approach would be to use symbols


What's a Symbol?

You can think of a Ruby symbol as a sort of name. 
It's important to remember that symbols aren't strings:

"string" == :string # false

Above and beyond the different syntax, 
there's a key behavior of symbols that makes them different from strings, 
while there can be multiple different strings that all have the same value, 
there's only one copy of any particular symbol at a given time.


Symbol Syntax

Symbols always start with a colon (:). 
They must be valid Ruby variable names, 
so the first character after the colon has to be a letter or underscore (_); 
after that, any combination of letters, numbers, and underscores is allowed.

Make sure you don't put any spaces in your symbol name — if you do, Ruby will get confused.

:my symbol # Don't do this!
:my_symbol # Do this instead

Symbols make good hash keys for a few reasons:

    They're immutable, meaning they can't be changed once they're created;
    Only one copy of any symbol exists at a given time, so they save memory;
    Symbol-as-keys are faster than strings-as-keys because of the above two reasons.


=end
menagerie = { :foxes => 2,
  :giraffe => 1,
  :weezards => 17,
  :elves => 1,
  :canaries => 4,
  :ham => 1
}

#The .object_id method gets the ID of an object
#it's how Ruby knows whether two objects are the exact same object.
puts "string".object_id
puts "string".object_id

puts :symbol.object_id
puts :symbol.object_id

#---------Converting Between Symbols and Strings
=begin

Converting between strings and symbols is a snap.

:sasquatch.to_s
# ==> "sasquatch"

"sasquatch".to_sym
# ==> :sasquatch

The .to_s and .to_sym methods are what you're looking for!
=end

#ou can use .each to loop through an array. 
#Remember, the .push method allows you to add an element to the end of an array!
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Add your code below!
symbols = []
strings.each { |s|
symbols.push(s.to_sym)
}

#Besides using .to_sym, you can also use .intern. 
This will internalize the string into a symbol and works just like .to_sym:
#All Aboard the Hash Rocket! : 
#The hash syntax you've seen so far (with the => symbol between keys and values) 
#is sometimes nicknamed the hash rocket style.

#Since ruby 1.9
movies = {
    a: "yo",
    b: "yoyo"
}

#Compare speed between symbols and strings on a hash
require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."

=begin
Becoming More Selective

We know how to grab a specific value from a hash by specifying the associated key, 
but what if we want to filter a hash for values that meet certain criteria? 
For that, we can use .select.

grades = { alice: 100,
  bob: 92,
  chris: 95,
  dave: 97
}

grades.select {|name, grade| grade < 97}
# ==> {:bob=>92, :chris=>95}

grades.select { |k, v| k == :alice }
# ==> {:alice=>100}
=end
movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
# Add your code below!
good_movies = movie_ratings.select { |x,y| y > 3}
    
=begin
We've often found we only want the key or value associated with a key/value pair, 
and it's kind of a pain to put both into our block and only work with one. 
Can we iterate over just keys or just values?

This is Ruby. Of course we can.

Ruby includes two hash methods, .each_key and .each_value, that do exactly what you'd expect:

my_hash = { one: 1, two: 2, three: 3 }

my_hash.each_key { |k| print k, " " }
# ==> one two three

my_hash.each_value { |v| print v, " " }
# ==> 1 2 3

=end
movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 3,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
# Add your code below!

movie_ratings.each_key { |key| puts key}

#-----------------------------------Project : A Night at the Movies---------------------------------
#Ruby's .to_sym method can convert a string to a symbol, 
#and .to_i will convert a string to an integer.
movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp.downcase
case choice
when 'add'
  puts "What movie do you want to add?"
  title = gets.chomp
  if movies[title.to_sym].nil? 
  #the .nil? method will return true if the object it's called on is nil, and false otherwise.
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when 'update'
  puts "What movie do you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    puts "What's the new rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
  end
when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  puts "What movie do you want to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been removed."
  end
else
  puts "Sorry, I didn't understand you."
end
=begin
The four verbs your program knows — add, display, update, and delete — are universal. 
This acronym is better known as CRUD, for create, read, update, and delete (respectively). 
These are the actions you take when you update an entry in a database, 
ask a website for information, or write a blog post. Being familiar with this setup is good, 
because you'll see it in everything from API calls to web frameworks like Ruby on Rails.
=end

#----------------------The zen Ruby-----------------------
#If on a single line syntax : expression if boolean
puts "1 est vrai" if 1
puts "It's true!" if true
#The One-Line Unless
puts "j'ai faim" unless false

=begin
An even more concise version of if/else is the ternary conditional expression. 
It's called "ternary" because it takes three arguments: 
a boolean, 
an expression to evaluate if the boolean is true, 
and an expression to evaluate if the boolean is false.

The syntax looks like this:

boolean ? Do this if true: Do this if false
=end
# Type your Ruby code below!
puts 2 > 1 ? "c'est vrai": "c'est faux"
#case ..when..then..else..end
puts "Hello there!"
greeting = gets.chomp

# Add your case statement below!
case greeting
when "English" then puts "Hello!"
when "French" then puts "Bonjour!"
when "German" then puts "Guten Tag!"
when "Finnish" then puts "Haloo!"
else
    puts "I don't know that language!"
end

#Conditional Assignment : We've seen that we can use the = operator to assign a value to a variable. 
#But what if we only want to assign a variable if it hasn't already been assigned? 
#For this, we can use the conditional assignment operator: ||=. 
#It's made up of the or (||) logical operator and the normal = assignment operator.
favorite_book = nil
puts favorite_book

favorite_book ||= "Cat's Cradle"
puts favorite_book

favorite_book ||= "Why's (Poignant) Guide to Ruby"
puts favorite_book

favorite_book = "Why's (Poignant) Guide to Ruby"
puts favorite_book

#Implicit Return : Ruby's methods will return the result of the last evaluated expression : by dafault.
=begin
This means that if you have a Ruby method like this one:

def add(a,b)
  return a + b
end

You can simply write:

def add(a,b)
  a + b
end
=end

=begin
If we know the range of numbers we'd like to include, we can use .upto and .downto. 
This is a much more Rubyist solution than 
trying to use a for loop that stops when a counter variable hits a certain value.

We might use .upto to print out a specific range of values:

95.upto(100) { |num| print num, " " }
# Prints 95 96 97 98 99 100

=end

"L".upto("P") { |letter| puts letter}

=begin 
.respond_to? Well, .respond_to? takes a symbol 
and returns true if an object can receive that method and false otherwise. 

For example, [1, 2, 3].respond_to?(:push)

would return true, since you can call .push on an array object. However,

[1, 2, 3].respond_to?(:to_sym)

would return false, since you can't turn an array into a symbol.

#.next will return the integer immediately following the integer it's called on, 
meaning 4.next will return 5.
=end
age = 26
age.respond_to?(:next) # Parenthès optionnelles

=begin

#Being Pushy

Speaking of pushing to arrays, Ruby has some nice shortcuts for common method names. 
As luck would have it, one is for .push!

Instead of typing out the .push method name, you can simply use <<, 
the concatenation operator (also known as "the shovel") to add an element to the end of an array:

[1, 2, 3] << 4
# ==> [1, 2, 3, 4]

Good news: it also works on strings! You can do:

"Yukihiro " << "Matsumoto"
# ==> "Yukihiro Matsumoto"


=end

alphabet = ["a", "b", "c"]
#alphabet.push("d") # Update me!
alphabet << "d"

caption = "A giraffe surrounded by "
#caption += "weezards!" # Me, too!
caption << "weezards!"

#string interpolation****** #{var}.
favorite_things = ["Ruby", "espresso", "candy"]

puts "A few of my favorite things:"

favorite_things.each do |thing|
  puts "I love #{thing}!"
end

#----------------------------The Refactor Factory : Project !---------------------------
#Let's frefactor this section of code
$VERBOSE = nil    # We'll explain this at the end of the lesson.
require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)

  unless n.is_a? Integer
    return "n must be an integer."
  end

  if n <= 0
    return "n must be greater than 0."
  end
  
  prime_array = [] if prime_array.nil?
  
  prime = Prime.new
  for num in (1..n)
    prime_array.push(prime.next)
  end
  return prime_array
end

first_n_primes(10)

=begin
we had that weird-looking $VERBOSE = nil on line 1; 
this allowed us to use the old-style 
Prime.new from Ruby 1.8 without the interpreter yelling at us. 
In Ruby 1.9, we use Prime.instance instead, 
and the array magic is already built-in—we don't have to create prime_array 
or loop through it ourselves!
=end
require 'prime'

def first_n_primes(n)
  # Check for correct input!
  "n must be an integer" unless n.is_a? Integer
  "n must be greater than 0" if n <= 0

  # The Ruby 1.9 Prime class makes the array automatically!
  prime = Prime.instance
  prime.first n
end

first_n_primes(10)

#***********************************Blocks, Procs, and Lambdas*******************************************
=begin
We learned a bit about blocks in Loops & Iterators and Methods, Blocks, & Sorting. 
We said earlier that a block is like a nameless method, but that's not quite true. 
(We'll get to actual nameless methods, called lambdas, later in this lesson.)

A Ruby block is just a bit of code that can be executed.
Block syntax uses either do..end or curly braces ({})

-------------------------------------------------------------------------------------------------------

Collect 'Em All

The collect method takes a block and applies the expression in the block to every element in an array.
Check it out:

my_nums = [1, 2, 3]
my_nums.collect { |num| num ** 2 }
# ==> [1, 4, 9]

If we look at the value of my_nums, though, we'll see it hasn't changed:

my_nums
# ==> [1, 2, 3]

This is because .collect returns a copy of my_nums, 
but doesn't change (or mutate) the original my_nums array. 
If we want to do that, we can use .collect! with an exclamation point
=end
fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

# Add your code below!

doubled_fibs = fibs.collect { |fib| 2*fib}


#Learning to Yield
=begin
Why do some methods accept a block and others don't? 
It's because methods that accept blocks have a way of transferring control 
from the calling method to the block and back again.
We can build this into the methods we define by using the yield keyword.
=end
def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }

#Yielding With Parameters
def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Eric") { |n| puts "My name is #{n}." }

# Now call the method with your name!
yield_name("Dark Vador") { |n| puts "My name is #{n}." }

=begin
#Procs
Blocks are not objects, and this is one of the very few exceptions to the "everything is an object" rule in Ruby.

Because of this, blocks can't be saved to variables and don't have all the powers and abilities of a real object. For that, we'll need... procs!

You can think of a proc as a "saved" block: just like you can give a bit of code a name and turn it into a method, you can name a block and turn it into a proc. Procs are great for keeping your code DRY, which stands for Don't Repeat Yourself. With blocks, you have to write your code out each time you need it; with a proc, you write your code once and can use it many times!

 
Proc Syntax

Procs are easy to define! You just call Proc.new and pass in the block you want to save. Here's how we'd create a proc called cube that cubes a number (raises it to the third power):

cube = Proc.new { |x| x ** 3 }

We can then pass the proc to a method that would otherwise take a block, and we don't have to rewrite the block over and over!

[1, 2, 3].collect!(&cube)
# ==> [1, 8, 27]
[4, 5, 6].map!(&cube)
# ==> [64, 125, 216]

(The .collect! and .map! methods do the exact same thing.)

The & is used to convert the cube proc into a block (since .collect! and .map! normally take a block). We'll do this any time we pass a proc to a method that expects a block.

#The .floor method rounds a float (a number with a decimal) down to the nearest integer. 

=end
multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

(1..100).to_a.select(&multiples_of_3)

#------------------------------------------------
floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
# Write your code below this line!

round_down = Proc.new {|i| i.floor}

# Write your code above this line!
ints = floats.collect(&round_down)

#-----------------------------------------------
# Here at the amusement park, you have to be four feet tall
# or taller to ride the roller coaster. Let's use .select on
# each group to get only the ones four feet tall or taller.

group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

# Complete this as a new Proc
over_4_feet = Proc.new { |height| height >= 4}

# Change these three so that they use your new over_4_feet Proc
can_ride_1 = group_1.select(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)
can_ride_3 = group_3.select(&over_4_feet)
#---------------------------------------------
def greeter
    yield
end

phrase = Proc.new {
    puts "Hello there!"
}

greeter(&phrase)

=begin
Calling a proc with a method isn't too tricky. However, there's an even easier way.

Unlike blocks, we can call procs directly by using Ruby's .call method. Check it out!

test = Proc.new { # does something }
test.call
# does that something!

=end

hi = Proc.new { puts "Hello!"}

hi.call

#You can convert symbols to procs using that handy little &
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

strings_array = numbers_array.map(&:to_s)

strings = ["1", "2", "3"]
nums = strings.map(&:to_i)
# ==> [1, 2, 3]


#********************************The Ruby Lambda****************************************
=begin
The Ruby Lambda : #syntax : lambda { |param| block }

Like procs, lambdas are objects. The similarities don't stop there: with the exception of a bit of syntax and a few behavioral quirks, lambdas are identical to procs.

Check out the code in the editor. See the lambda bit? Typing

 lambda { puts "Hello!" }

Is just about the same as

Proc.new { puts "Hello!" }

In the example to the right, when we pass the lambda to lambda_demo, the method calls the lambda and executes its code.

=end

def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })


#We have an array of strings in the editor, but we want an array of symbols
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
# Write your code below this line!

symbolize = lambda { |str| str.to_sym}

# Write your code above this line!
symbols = strings.collect(&symbolize)

#----------------------Lambdas vs. Procs-------------------------

=begin

If you're thinking that procs and lambdas look super similar, that's because they are! There are only two main differences.

First, a lambda checks the number of arguments passed to it, while a proc does not. This means that a lambda will throw an error if you pass it the wrong number of arguments, whereas a proc will ignore unexpected arguments and assign nil to any that are missing.

Second, when a lambda returns, it passes control back to the calling method; when a proc returns, it does so immediately, without going back to the calling method.

To see how this works, take a look at the code in the editor. Our first method calls a proc; the second calls a lambda.

#‘return’ inside of a lambda triggers the code right outside of the lambda code
=end
def batman_ironman_proc
  victor = Proc.new { return "BAtman will win!" }
  victor.call
  "Iron Mans will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "BatmaN will win!" }
  victor.call
  "Iron Manss will win!"
end

puts batman_ironman_lambda

#----------My own lambda--------------
my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

# Add your code below!
symbol_filter = lambda { |sym| sym.is_a? Symbol}

symbols = my_array.select(&symbol_filter)

=begin

Quick Review

All this talk of blocks, procs, and lambdas might have your head spinning. Let's take a minute to clarify exactly what each one is:

    A block is just a bit of code between do..end or {}. It's not an object on its own, but it can be passed to methods like .each or .select.
    A proc is a saved block we can use over and over.
    A lambda is just like a proc, only it cares about the number of arguments it gets and it returns to its calling method rather than returning immediately.

There are obviously lots of cases in which blocks, procs, and lambdas can do similar work, but the exact circumstances of your program will help you decide which one you want to use.

=end

dds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

ints = odds_n_ends.select { |i| i.is_a? Integer}

#-----------
ges = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

# Add your code below!
under_100 = Proc.new { |n| n < 100}

youngsters = ages.select(&under_100)

#----------------------

crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!
first_half = lambda { |key,value|
value < "M"
}

a_to_m = crew.select(&first_half)

#**************************************** Object-Oriented Programming I**************************
=begin
#Define a class : 
Class Syntax :

class NewClass
  # Class magic here : Methods etc.
end

=end
class Language
  def initialize(name, creator)
    @name = name #In Ruby, we use @ before a variable to signify that it's an instance variable. This means that the variable is attached to the instance of the class.
    @creator = creator
  end
	
  def description
    puts "I'm #{@name} and I was created by #{@creator}!"
  end
end

ruby = Language.new("Ruby", "Yukihiro Matsumoto")
python = Language.new("Python", "Guido van Rossum")
javascript = Language.new("JavaScript", "Brendan Eich")

ruby.description
python.description
javascript.description

=begin

Scope it Out

Another important aspect of Ruby classes is scope. The scope of a variable is the context in which it's visible to the program.

It may surprise you to learn that not all variables are accessible to all parts of a Ruby program at all times. When dealing with classes, you can have variables that are available everywhere (global variables), ones that are only available certain methods (local variables), others that are members of a certain class (class variables), and variables that are only available to particular instances of a class (instance variables).

The same goes for methods: some are available everywhere, some are only available to members of a certain class, and still others are only available to particular instance objects.

Check out the code in the editor. See how some variables start with $, @, or @@? This helps mark them as global, instance, and class variables (respectively).
=end

class Computer
  $manufacturer = "Mango Computer, Inc." #Global Variable : $
  @@files = {hello: "Hello, world!"} #Class Variable : @@
  
  def initialize(username, password)
    @username = username
    @password = password
  end
  
  def current_user
    @username
  end
  
  def self.display_files #class method
    @@files
  end
end

# Make a new Computer instance:
hal = Computer.new("Dave", 12345)

puts "Current user: #{hal.current_user}"
# @username belongs to the hal instance.

puts "Manufacturer: #{$manufacturer}"
# $manufacturer is global! We can get it directly.

puts "Files: #{Computer.display_files}"
# @@files belongs to the Computer class.


=begin

Naming Your Variables

Recall that instance variables begin with an @. This isn't just a Ruby convention—it's part of the syntax! Always start your instance variables with @.

Class variables are like instance variables, but instead of belonging to an instance of a class, they belong to the class itself. Class variables always start with two @s, like so: @@files.

Global variables can be declared in two ways. The first is one that's already familiar to you: you just define the variable outside of any method or class, and voilà! It's global. If you want to make a variable global from inside a method or class, just start it with a $, like so: $matz.

=end
#global var
class MyClass
  $my_variable = "Hello!"
end

puts $my_variable

#Instance var
class Person
  def initialize(name,age,profession)
    @name = name
    @age = age
    @profession = profession
  end
end
#class var
class Person
  # Set your class variable to 0 on line 3
 @@people_count = 0 
  
  def initialize(name)
    @name = name
    # Increment your class variable on line 8
   @@people_count += 1 
  end
  
  def self.number_of_instances #class method
    # Return your class variable on line 13
   @@people_count
  end
end

matz = Person.new("Yukihiro")
dhh = Person.new("David")

puts "Number of Person instances: #{Person.number_of_instances}"


#**********class in real life---------------------
ef create_record(attributes, raise_error = false)
  record = build_record(attributes)
  yield(record) if block_given?
  saved = record.save
  set_new_record(record)
  raise RecordInvalid.new(record) if !saved && raise_error #raise bit (which we'll cover in future lessons) generates a new RecordInvalid error if the user tries to create or save an invalid record.
  record
end

#******************************Inheritance ****************************
=begin

Inheritance Syntax

In Ruby, inheritance works like this:

class DerivedClass < BaseClass
  # Some stuff!
end

=end
class ApplicationError
  def display_error
    puts "Error! Error!"
  end
end

class SuperBadError < ApplicationError #SuperBadError inherits from ApplicationError
end

err = SuperBadError.new
err.display_error

#Override!!!!

lass Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

# Add your code below!

class Dragon < Creature
    def fight
    return "Breathes fire!"
  end
end

=begin

When Good isn't Good Enough

On the flip side, sometimes you'll be working with a derived class (or subclass) and realize that you've overwritten a method or attribute defined in that class' base class (also called a parent or superclass) that you actually need. Have no fear! You can directly access the attributes or methods of a superclass with Ruby's built-in super keyword.

The syntax looks like this:

class DerivedClass < Base
  def some_method
    super(optional args)
      # Some stuff
    end
  end
end

When you call super from inside a method, that tells Ruby to look in the superclass of the current class and find a method with the same name as the one from which super is called. If it finds it, Ruby will use the superclass' version of the method.

=end

class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

# Add your code below!

class Dragon < Creature
    def fight
    puts "Instead of breathing fire..."
    super
  end
end
d = Dragon.new("y")
d.fight

=begin

There Can Be Only One!

Any given Ruby class can have only one superclass. Some languages allow a class to have more than one parent, which is a model called multiple inheritance. This can get really ugly really fast, which is why Ruby disallows it.

However, there are instances where you want to incorporate data or behavior from several classes into a single class, and Ruby allows this through the use of mixins. We'll learn about mixins in a later lesson! For now, we'll demonstrate what happens if you try to do multiple inheritance in Ruby.

The demo code we're about to show you includes a fancy trick: if you want to end a Ruby statement without going to a new line, you can just type a semicolon. This means you can write something like

class Monkey
end

#on just one line: class Monkey; end. This is a time saver when you're writing something very short, like an empty class or method definition.
=end

class Creature
  def initialize(name)
    @name = name
  end
end

class Person
  def initialize(name)
    @name = name
  end
end

class Dragon < Creature; end
class Dragon < Person; end

# ==> superclass mismatch for class Dragon !!

#Petit exo !

class Message
    @@messages_sent = 0
    
    def initialize(from,to)
      @from = from
      @to = to
      @@messages_sent += 1
    end
end

my_message = Message.new(1,2)
class Email < Message 
    def initialize(from,to)
      super
    end
end

#--*************************Project : Virtual Computer *---***********************
=begin

What You'll Be Building

Now that you've learned all about classes and objects in Ruby, you can create any kind of Ruby object your heart desires. In this project, we'll use our newfound knowledge to create a class, Computer, and generate instances of that class that can manipulate imaginary files for us.

=end
class Machine
  @@users = {}
  
  def initialize(username, password)
    @username = username
    @password = password
    @@users[username] = password
    @files = {}
  end
  
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created by #{@username} at #{time}."
  end
  
  def Machine.get_users
    @@users
  end
end

my_machine = Machine.new("eric", 01234)
your_machine = Machine.new("you", 56789)

my_machine.create("groceries.txt")
your_machine.create("todo.txt")

puts "Users: #{Machine.get_users}"

#--------------I had fun---------------
class Computer 
     @@users = {}
     
    def initialize(username,password)
      @username = username
      @password = password
      @files = Hash.new
      @@users[username] = password
    end
    
    def create(filename)
      time = Time.now #Return the current time
      @files[filename] = time
       puts "#{filename} was created by #{@username} at #{time}."
    end
    
    def delete(filename)
        @files.delete("#{filename}")
    end
    
    def display
        @files
    end
    
    def Computer.get_users
        return @@users
    end
    
end

#************************************* Object-Oriented Programming II *******************************
class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  public    # This method can be called from outside the class.
  
  def about_me
    puts "I'm #{@name} and I'm #{@age} years old!"
  end
  
  private   # This method can't!
  
  def bank_account_number
    @account_number = 12345
    puts "My bank account number is #{@account_number}."
  end
end

eric = Person.new("Eric", 26)
eric.about_me
eric.bank_account_number #impossible beacause of private !

=begin
#Methods are public by default in Ruby, so if you don't specify public or private, your methods will be public 
In this case, however, we want to make it clear to people reading our code which methods are public. We do this by putting public before our method definitions, like so:

 class ClassName
  # Some class stuff
  public
  def public_method
    # public_method stuff
  end
end

Note that everything after the public keyword through the end of the class definition will now be public unless we say otherwise. (We'll say otherwise in the next exercise.)
=end

=begin
class ClassName
  # Some class stuff

  public
  # Public methods go here
  def public_method; end

  private
  # Private methods go here
  def private_method; end
end


private methods are just that: they're private to the object where they are
defined. This means you can only call these methods from other code inside
the object. Another way to say this is that the method cannot be called with an explicit receiver. 
You've been using receivers all along—these are the objects on which methods are called! 
Whenever you call object.method, object is the receiver of the method.
In order to access private information, we have to create public methods that know how to get it. 
This separates the private implementation from the public interface, 
and we'll go over this in more detail in the next two exercises.
=end
#****************************************************************************
=begin

# 	attr_reader, attr_writer

We saw in the lesson on classes that Ruby needs methods in order to access attributes. For instance, if we want to access a @name instance variable, we had to write something like

def name
  @name
end

Well, no longer! We can use attr_reader to access a variable and attr_writer to change it. If we write

class Person
  attr_reader :name
  attr_writer :name
  def initialize(name)
    @name = name
  end
end

Ruby does something like this for us automatically:

def name
  @name
end

def name=(value)
  @name = value
end

Like magic, we can read and write variables as we please! 
We just pass our instance variables (as symbols) to attr_reader or attr_writer.

(That name= might look funny, but you're allowed to put an = sign in a method name. 
That's just a Ruby convention saying, "hey, this method sets a value!")


***************


attr_accessor

If we want to both read and write a particular variable, 
there's an even shorter shortcut than using attr_reader and attr_writer. 
We can use attr_accessor to make a variable readable and writeable in one fell swoop.

=end

#**********************MODULES!!!!!************************************************
#You can think of a module as a toolbox that contains a set methods and constants.
#modules can't create instances and can't have subclasses. They're just used to store things!
module Circle

  PI = 3.141592653589793
  
  def Circle.area(radius)
    PI * radius**2
  end
  
  def Circle.circumference(radius)
    2 * PI * radius
  end
end

=begin
#Module Syntax :

module ModuleName
  # Bits 'n pieces
end

#constants : Ruby doesn't make you keep the same value for a constant once it's initialized, but it will warn you if you try to change it. Ruby constants are written in ALL_CAPS and are separated with underscores if there's more than one word.
=end

=begin
One of the main purposes of modules is to separate methods and constants into named spaces. This is called (conveniently enough) "namespacing", and it's how Ruby doesn't confuse Math::PI and Circle::PI.

See that double colon we just used? That's called the "scope resolution operator", which is a fancy way of saying it tells Ruby where you're looking for a specific bit of code. If we say Math::PI, Ruby knows to look inside the Math module to get that PI, not any other PI (such as the one we created in Circle).
=end

puts Math::PI

=begin
Some modules, like Math, are already present in the interpreter. Others need to be explicitly brought in, however, and we can do this using require. We can do this simply by typing :
#syntax:
require 'module'

=end

require 'date'

puts Date.today

#Feeling Included : We can do more than just require a module, however. We can also include it!

#Any class that includes a certain module can use those module's methods!
class Angle
  include Math
  attr_accessor :radians
  
  def initialize(radians)
    @radians = radians
  end
  
  def cosine
    cos(@radians)
  end
end

acute = Angle.new(1)
acute.cosine

#**************************Mixin : The Marriage of Modules and Classes*********************
#When a module is used to mix additional behavior and information into a class, it's called a mixin. Mixins allow us to customize a class without having to rewrite code!
module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump

#

# Create your module here!
module MartialArts
 def swordsman
     puts "I'm a swordsman."
 end
end




class Ninja
  include MartialArts
  def initialize(clan)
    @clan = clan
  end
end

class Samurai
  include MartialArts
  def initialize(shogun)
    @shogun = shogun
  end
end


#Extend Your Knowledge
=begin
Whereas "include" mixes a module's methods in at the instance level (allowing instances of a particular class to use the methods), the "extend" keyword mixes a module's methods at the class level. This means that class itself can use the methods, as opposed to instances of the class.
=end

# ThePresent has a .now method that we'll extend to TheHereAnd

module ThePresent
  def now
    puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end

class TheHereAnd
  extend ThePresent
end

TheHereAnd.now


#*********************Procjet : Banking on Ruby *****************************************************
class Account
  attr_reader :name, :balance #Doucle déclaration sur une même ligne
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end
  
  def display_balance(pin_number)
    puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
  end
  
  def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end
  
  private
  
  def pin
    @pin = 1234
  end
  
  def pin_error
    "Access denied: incorrect PIN."
  end
end

my_account = Account.new("Eric", 1_000_000) #a_bbb_ccc_d_ : Numérotaion avec undrscore
my_account.withdraw(11, 500_000)
my_account.display_balance(1234)
my_account.withdraw(1234, 500_000)
my_account.display_balance(1234)


            

