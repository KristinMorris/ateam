# !!!!!!!!!!!!!!!!!!!!!Space!!!!!!!!!!!!!!!!!!!!!
# !!!!!!!!!!!!!!!!!!!!!Space!!!!!!!!!!!!!!!!!!!!!
# !!!!!!!!!!!!!!!!!!!!!Space!!!!!!!!!!!!!!!!!!!!!
# 1 Space
def space1
  puts ""
end
# 3 Spaces
def space3
  3.times {puts ""}
end
# 5 Spaces
def space5
  5.times {puts ""}
end

def add_another_loop
  sentence = []
  loop do
    puts "Add an a name"
    puts "y: Yes"
    puts "e: Exit"
    puts "Enter your choice: "
    answer = gets.chomp.downcase
    case answer
    when 'y'
      puts "Add a name"
      string = gets.chomp.downcase
      sentence.push(string)
    when 'e'
      # sentence.each do |value|
      #   puts "The email is #{value}"
      # end
      return sentence
      break
    end
  end
end



# ruby Project_Ateam.rb
# !!!!!!!!!!!!!!!!!!!!!Beginning of code!!!!!!!!!!!!!!!!!!!!!
# !!!!!!!!!!!!!!!!!!!!!Beginning of code!!!!!!!!!!!!!!!!!!!!!
# !!!!!!!!!!!!!!!!!!!!!Beginning of code!!!!!!!!!!!!!!!!!!!!!

<<<<<<< HEAD:Project_Ateam.rb


contacts = add_another_loop
contacts.each do |value|
  puts "The name is #{value}"
end
=======
print "Please enter your name" +" "
name = gets.chomp

print "Please enter your email address" + " "
email = gets.chomp


print "Your name is #{name} and and your email is #{email}"
>>>>>>> b2f48c3e8ef30cd7c9c247370ed3ddcdc26a13f2:project_ateam.rb
