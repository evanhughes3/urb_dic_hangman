# ['f','a','r','t']

require 'debugger'
#while guessedletters < 8 do
#get user input - a letter
#  check if that letter is in full_answer
    #if it is then first its index position in full answer of the chosen letter
    #find that index position in user answer, and add that letter at that posit
    #else put the letter in guessed letter array

class Hangman
  attr_reader :guessed_letters

  def initialize(word, definition, example)
    p @full_answer = word.chars #['a','b','c', ' ', d']
    create_user_answer
    @guessed_letters = []
    @definition = definition # ["To stink up the place"]
    @example = example
  end

  def create_user_answer
    @user_answer = []
    matches = @full_answer.join('').tr('[a-z]','_')
    @user_answer << matches
    @user_answer = @user_answer.first.split("")
  end


  def get_user_input
    @user_input = gets.chomp.downcase
  end

  def check_letter
    get_user_input
    @full_answer.include?(@user_input)
  end

  def add_letter_to_guessed
    puts "Guessed letter array"
    @guessed_letters << @user_input
  end

  def add_letter_to_user_answer
    found_index = @full_answer.index(@user_input)
    @user_answer[found_index] = @user_input
  end

  def game_over?
    @guessed_letters.length >= 6 || @full_answer == @user_answer
  end

  def won?
    @full_answer == @user_answer
  end

  def current_score
    puts "Answer:   #{@user_answer.join(' ')} \n\n"
    puts "Guessed Letters:   #{@guessed_letters.join('  ')} \n\n"
    puts "Definition:   #{@definition} \n\n"
  end

  def final_screen
    puts "Answer:   #{@full_answer.join('')} \n\n"
    puts "Definition:   #{@definition} \n\n"
    puts "Example:     #{@example}"
    puts
  end

end

# test = Hangman.new('abc def', "To stink up the place", "Here's an example")
# # p test.check_letter
# p test.add_letter_to_guessed
# p test.add_letter_to_user_answer
# p test.welcome
# p test.play_game!


# module Controller
#   def game
#   end
# end

