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
# !!!!!!!!!!!!!!!!!!!!!Beginning of code!!!!!!!!!!!!!!!!!!!!!
# !!!!!!!!!!!!!!!!!!!!!Beginning of code!!!!!!!!!!!!!!!!!!!!!
# !!!!!!!!!!!!!!!!!!!!!Beginning of code!!!!!!!!!!!!!!!!!!!!!
space3
print "Please insert some text in English: "
english = gets.chomp.downcase
space1
morse = {a: ".-", b: "-...", c: "-.-.", d: "-..", e: ".", f: "..-.", g: "--.", h: "....", i: "..", j: ".---", k: "-.-", l: ".-..", m: "--", n: "-.", o: "---", q: "--.-", r: ".-.", s: "...", t: "-", u: "..-", v: "...-", w: ".--", x: "-..-", y: "-.--", z: "--.."}
morse_inverted = morse.invert
puts "************* Here is your English into Morse *************"



english.each_char do |each|
  print morse[each.to_sym]
  print " "
  print each
  space1
end
space3
print "You can enter some morse if you want:"
morse_input = gets.chomp.split
puts "************* Here is your Morse into English *************"
morse_input.each do |each|
  print each
  print " "
  print morse_inverted[each]
  space1
end


space3
