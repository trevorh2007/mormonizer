require 'facets/enumerable/every'

def anim(string)
  string.each_char do |n|
  print n
  charWait = rand(0.07..0.1)
  sleep(charWait)
  end
end

def mormonizer
  switcher = Hash[
    "ass", "fanny",
    "bastard", "gentleman",
    "bitch", "pip-squeek",
    "boob", "udder",
    "cock", "pecker",
    "cum", "snot",
    "cunt", "meanie",
    "damn", "dang",
    "dick", "pecker",
    "douche", "dingus",
    "fag", "bugger",
    "god", "gosh",
    "hate", "dislike",
    "hell", "heck",
    "idiot", "scholar",
    "fuck", "truck",
    "jesus", "lord",
    "nigger", "person of color",
    "penis", "pickle",
    "piss", "peeved",
    "pussy", "cotton headed ninny muggins",
    "shit", "shoot",
    "slut", "grinch",
    "twat", "jive turkey",
    "whore", "witch"
  ]

  puts "Text to mormonize?"
  input = gets.chomp.downcase.split(" ")
  switcher.each { |k, v| input.every.sub!(k, v) }
  system("clear")
  anim(input.join(" "))
 
end


mormonizer