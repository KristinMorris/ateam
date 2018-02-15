
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
    puts "Add an E-mail"
    puts "y: Yes"
    puts "e: Exit"
    puts "Enter your choice: "
    answer = gets.chomp.downcase
    case answer
    when 'y'
      puts "Add your Text, one word at a time"
      string = gets.chomp.downcase
      sentence.push(string)
    when 'e'
      sentence.each do |value|
        puts "The email is #{value}"
      end
      break
    end
  end
end

add_another_loop

# ruby Project_Ateam.rb
# !!!!!!!!!!!!!!!!!!!!!Beginning of code!!!!!!!!!!!!!!!!!!!!!
# !!!!!!!!!!!!!!!!!!!!!Beginning of code!!!!!!!!!!!!!!!!!!!!!
# !!!!!!!!!!!!!!!!!!!!!Beginning of code!!!!!!!!!!!!!!!!!!!!!
space3


print "Please enter your name" +" "
answer = gets.chomp

print "Please enter your email address" + " "
answer = gets.chomp

