require_relative '../views/view'
require_relative '../models/hangman'
require_relative '../../scrapper.rb'
require_relative '../../config/environment'

class Controller

  def initialize(formated_hashs)
    @game = Hangman.new(formated_hashs)
  end

  #@user = User.create(name: @name_user_input)

  def ask_to_play_again
    puts "Would you like to play again? (y or n)"
    user_answer = gets.chomp
    if user_answer == "y"
      Controller.new(format!.sample).play_game!
    else
      return
    end
  end

  def play_game!
    View.clear_screen
    View.welcome
    create_user
    View.zero_wrong_guess
    @game.current_score
    until @game.game_over?
      if @game.check_letter
        @game.add_letter_to_user_answer
        View.clear_screen
        what_to_print
        @game.current_score
        View.correct_guess
        print_score
      else
        @game.add_letter_to_guessed
        View.clear_screen
        what_to_print
        @game.current_score
        View.incorrect_guess
        print_score
      end
    end
    evaluate_outcome  #calculate a score
    puts
    ask_to_play_again
  end

  def create_user
    puts "What is your username?"
    current_user = gets.chomp
    @user = User.create(name: current_user)
  end

  def generate_score
    10 - (@game.guessed_letters.length)
  end

  def evaluate_outcome
    if @game.won?
      Score.create(value: generate_score, user_id: @user.id)
      View.clear_screen
      @game.final_screen
      View.you_win
    else
      View.you_lose
      @game.final_screen
      Score.create(value: generate_score, user_id: @user.id)
    end
  end

  def print_score
    puts "Your score is " + generate_score.to_s + "!"
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
