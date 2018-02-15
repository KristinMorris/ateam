
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



contacts = add_another_loop
contacts.each do |value|
  puts "The name is #{value}"
end
