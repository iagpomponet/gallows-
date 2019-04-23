def draw_gallows(mistakes)
    head = "   "
    body = " "
    legs = "   "
    arms = "   "
    if mistakes >= 1
        head = "(_)"
    end
    if mistakes >= 2
        arms = " | "
        body = "|"
    end
    if mistakes >= 3
        arms = "\\|/"
    end
    if mistakes >= 4
        legs = "/ \\"
    end

    puts "  _______       "
    puts " |/      |      "
    puts " |      #{head}  "
    puts " |      #{arms}  "
    puts " |       #{body}  "
    puts " |      #{legs}  "
    puts " |              "
    puts "_|___           "
    puts

end
def print_actual_champion(data)
  puts "The actual record is from #{data[0]}, with #{data[1]} points"

end
def print_total_points(total_points)
  puts "you have #{total_points} points"
end
def welcome
  puts "/****************/"
  puts "/ GALLOWS */"
  puts "/****************/"
  puts "What is your name?"
  nome = gets.strip
  puts "\n\n\n\n\n\n"
  puts "We'll start the game for you, #{nome}"
  nome
end
def dont_u_wanna_play?
    puts "do you wanna play it again? (Y/N)"
    want_to_play = gets.strip
    dont_wanna_play = want_to_play.upcase == "N"
end
def ask_a_letter(mistakes, attempts)
  puts "\n\n"
  puts "Type one letter (or one word if you're too damn sure)"
  attempt = gets.strip.downcase
  attempt
end
def print_status(mistakes,attempts,actual_points, mask)
  draw_gallows(mistakes)
  puts "you have done #{mistakes} mistakes"
  puts "your attempts were #{attempts}"
  puts "you've achieved #{actual_points} points"
  puts "the word is #{mask}"
end
def print_not_found
  puts "letter not found"
end
def print_total_found(total_found)
  puts "this letter appears #{total_found} times"
end
def print_victory
  puts "\nCongratulations, you've won!"
        puts

        puts "       ___________      "
        puts "      '._==_==_=_.'     "
        puts "      .-\\:      /-.    "
        puts "     | (|:.     |) |    "
        puts "      '-|:.     |-'     "
        puts "        \\::.    /      "
        puts "         '::. .'        "
        puts "           ) (          "
        puts "         _.' '._        "
        puts "        '-------'       "
        puts
end
def print_points(actual_points)
    puts "you've achieved #{actual_points} points in this round"
end
def print_wrong_letter
  puts "Geez... you've got it wrong."
end
def print_game_over
  puts "you were hanged!!"
end
def print_duplicate_letter(attempt)
  puts "you've already tried #{attempt}"
end
def print_choosing_word
  puts "\n\n"
  puts  "We're looking for a secret word for you..."
end
def print_secret_word(secret_word)
  puts "\n\n"
  puts "We've found one"
  puts "\n\n"
  puts "Your secret word has #{secret_word.size} letters"
end
