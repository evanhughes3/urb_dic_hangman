require_relative 'view'
require_relative 'hangman'

class Controller

  def initialize
    @game = Hangman.new('fart', "To stink up the place", "The DBC fridge smells like a fart.")
  end

  def play_game!
    View.clear_screen
    View.zero_wrong_guess
    @game.current_score
    until @game.game_over?
      if @game.check_letter
        @game.add_letter_to_user_answer
        View.clear_screen
        what_to_print
        @game.current_score
        View.correct_guess
      else
        @game.add_letter_to_guessed
        View.clear_screen
        what_to_print
        @game.current_score
        View.incorrect_guess
      end
    end
    evaluate_outcome
  end

  def evaluate_outcome
    if @game.won?
      View.clear_screen
      @game.final_screen
      View.you_win
    else
      View.you_lose
      @game.final_screen
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
