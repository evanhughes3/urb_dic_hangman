
class Hangman
  attr_reader :guessed_letters

  def initialize(word_hash)
    @full_answer = word_hash[:word].downcase.chars
    create_user_answer
    @guessed_letters = []
    @definition = word_hash[:definition]
    @example = word_hash[:example]
  end

   def create_user_answer
    @user_answer = []
    matches = @full_answer.join('').tr('[a-zA-Z]','_')
    @user_answer << matches
    @user_answer = @user_answer.first.split("")
  end



  def get_user_input
    @user_input = gets.chomp.downcase
    if @user_answer.include?(@user_input) || @guessed_letters.include?(@user_input)
      puts "You already tried that letter!"
      get_user_input
    elsif @user_input.length > 1
      puts "Please only enter one letter at a time"
      get_user_input
    elsif @user_input.match(/[a-z]/)
      return @user_input
    else
      puts "Sorry you can only enter letters, please enter another letter"
      get_user_input
    end
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
    index_to_replace = []
    @full_answer.each_with_index { |letter, index| letter == @user_input ? index_to_replace << index : letter}

    index_to_replace.each do |index|
     @user_answer[index] = @user_input
    end
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

# test = Hangman.new('fart', "To stink up the place")
# # p test.check_letter
# # p test.add_letter_to_guessed
# # p test.add_letter_to_user_answer
# p test.welcome
# p test.play_game!


# module Controller
#   def game
#   end
# end
