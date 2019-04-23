require_relative 'ui'
require_relative 'rank'
def choose_secret_word
    print_choosing_word
    text = File.read("words.txt")
    all_words = text.split "\n"
    choosen_number = rand(all_words.size)
    secret_word = all_words[choosen_number].downcase
    print_secret_word(secret_word)
    secret_word
    end
def masked_word(secret_word,attempts)
  mask = ""
  for letter in secret_word.chars
    if attempts.include? letter
      mask << letter
    else
      mask << "_"
    end
  end
      mask
end
def ask_a_guess(mistakes,attempts,mask,actual_points)
  print_status(mistakes,attempts,actual_points,mask)
    loop do
      attempt = ask_a_letter(mistakes, attempts)
      if attempts.include? attempt
        print_duplicate_letter(attempt)
      else
        return attempt
        end
    end
end
def play(name)
  secret_word = choose_secret_word
  mistakes = 0
  attempts = []
  actual_points = 0
  while mistakes <= 5
        mask = masked_word(secret_word,attempts)
        attempt = ask_a_guess(mistakes,attempts,mask,actual_points)
        attempts << attempt
        tried_one_letter = attempt.size == 1
          if tried_one_letter
            letter_you_typed = attempt[0]
            total_found = secret_word.count letter_you_typed
                  if total_found == 0
                    print_not_found
                    mistakes +=1
                else
                print_total_found(total_found)
                end
            else
            right = attempt == secret_word
            if right
                print_victory
                actual_points += 100
              break
            else
            print_wrong_letter
            mistakes += 1
            actual_points -= 30
            end
          end
        end
          if mistakes >= 5
            print_game_over
        end
        print_points(actual_points)
        return actual_points
end

def gallows
name = welcome
total_points = 0
actual_champion = read_rank
print_actual_champion(actual_champion)
      loop do
          total_points += play(name)
          print_total_points(total_points)
          if read_rank[1].to_i < total_points
          save_rank(total_points,name)
        end
            if dont_u_wanna_play?
              break
                end
          end
end
