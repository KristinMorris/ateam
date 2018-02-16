

class Morse
  attr_reader :morse, :sentence, :results

  def initialize
    @morse = { 'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.', 'F' => '..-.', 'G' => '--.', 'H' => '....', 'I' => '..', 'J' => '.---', 'K' =>' -.-', 'L' => '.-..', 'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.', 'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-', 'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-', 'Y' => '-.--', 'Z' => '--..' }
    @sentence = []
    @results = {}
  end

  def text_or_string
    visual
    type = ""
    until type == "T" || type == "M" do
      puts "Enter 'T' For Text or 'M' for Morse"
      type = gets.chomp.upcase
    end
    if type == "T"
      add_text
    elsif type == "M"
      add_morse
    end
  end

  def add_text
    puts "Add your Text, one word at a time"
    string = gets.chomp.downcase
    split_type = ''
    word_arr = string.split('')
    sentence.push(word_arr)
    add_another_loop(split_type)
  end

  def add_morse
    puts "Add your Morse, seperate each morse letter with a ','"
    string = gets.chomp.downcase
    split_type = ','
    word_arr = string.split(',')
    sentence.push(word_arr)
    add_another_loop(split_type)
  end

  def print_loop(sentence)
    sentence.each do |word_arr|
      output_string = ''
      original = ''
      word_arr.each do |letter|
        morse.each do |key, value|
          if letter.upcase == key
            output_string += "#{value},"
            original += "#{key}"
          elsif letter == value
            output_string += "#{key}"
            original += "#{value}"
          end
        end
      end
      results.store(output_string, original)
    end
  end

  def add_another_loop(split_type)
    loop do
      puts "Add another word? "
      print "y: Yes || e: Exit "
       puts "Enter your choice: "
      answer = gets.chomp.downcase
      case answer
      when 'y'
        puts "Add your Text, one word at a time"
        string = gets.chomp.downcase
        word_arr = string.split(split_type)
        sentence.push(word_arr)
      when 'e'
        print_loop(sentence)
        break
      end
    end
  end

  def print_results
    results.each do |key, value|
      puts "#{key} is = to #{value}"
    end
  end

  def visual
    print "\n"
    60.times {print "-"}
    print "\n"
    20.times {print " "}
    puts "*** MORSE CODE CONVERTER *** "
    60.times {print "-"}
    print "\n"
  end

end

# ruby morse.rb

 sos = Morse.new
 sos.text_or_string
 sos.print_results
