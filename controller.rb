require_relative 'view'
require_relative 'hangman'

class Controller

  def initialize
    @game = Hangman.new('fart', "To stink up the place")
  end

  def play_game!
    View.zero_wrong_guess
    @game.current_score
    until @game.game_over?
      if @game.check_letter
        @game.add_letter_to_user_answer
        @game.current_score
        what_to_print
      else
        @game.add_letter_to_guessed
        @game.current_score
        what_to_print
      end
    end
  end

  def what_to_print
    current_length = @game.guessed_letters.length
    case current_length
    when 0
      View.zero_wrong_guess
    when 1
      View.one_wrong_guess
    when 2
      View.two_wrong_guess
    when 3
      View.three_wrong_guess
    when 4
      View.four_wrong_guess
    when 5
      View.five_wrong_guess
    when 6
      View.six_wrong_guess
    else
      puts "Nothing exists"
    end
  end

end

Controller.new.play_game!
