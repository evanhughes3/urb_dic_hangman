module View

  def self.welcome
    puts "Welcome to Slangman!"
    puts "Fiddlers 2015"
    puts "Created by Crabs: Evan, Peter C, and Jess"
  end

  def self.six_wrong_guess
    puts "
           +------+
           |      |
           |      |
          0       |
         /  \\     |
        / || \\    |
          ||      |
         /  \\     |
        /    \\    |
                  |
       ------------
       ------------
       "
  end




  def self.five_wrong_guess
    puts "
           +------+
           |      |
           |      |
          0       |
         /  \\     |
        / || \\    |
          ||      |
            \\     |
             \\    |
                  |
       ------------
       ------------
       "
  end



  def self.four_wrong_guess
    puts "
       +------+
       |      |
       |      |
      0       |
     /  \\     |
    / || \\    |
      ||      |
              |
              |
              |
   ------------
   ------------
   "
  end

  def self.three_wrong_guess
      puts "
           +------+
           |      |
           |      |
          0       |
            \\     |
          || \\    |
          ||      |
                  |
                  |
                  |
       ------------
       ------------
       "
  end

  def self.two_wrong_guess
      puts "
           +------+
           |      |
           |      |
          0       |
            \\     |
             \\    |
                  |
                  |
                  |
                  |
       ------------
       ------------
       "
  end

  def self.one_wrong_guess

    puts "
           +------+
           |      |
           |      |
          0       |
                  |
                  |
                  |
                  |
                  |
                  |
       ------------
       ------------
       "
  end

  def self.zero_wrong_guess
   puts "
             +------+
             |      |
             |      |
             |      |
                    |
                    |
                    |
                    |
                    |
         ------------
         ------------"
 end

 def self.you_lose
  puts
  puts "YOU LOST SUCKA!"
  puts
 end

 def self.clear_screen
  print "\e[2J"
 end

 def self.you_win
  puts "Congrats you won!"
  puts
  puts "Fiddlers 2015 For The Win"
  puts "
                           e$$$
                          4$$$$
                          $$$$
                         .$$$$         $$$
                      z$$$$$$$$       $$$$
                     $$$$$$           *$$$$
                     $$$$$                $$$
                     $$$*     dc    ..    '$$$
            4       $$$F      $F    $%     $$$$       4
            'r     4$$$L  .e$$$$$$$$$$bc    $$$$r      $
             $.    '$$$$z$$$$$$$$$$$$$$$$$..$$$$$     z$
             $$$c   $$$$$$$$$$$$$$$$$$$$$$$$$$$$F  .d$$*
               $$$. $$$$$$$$$$$$$$$$$$$$$$$$$$P z$$$
                  $$b$$$$$$$$$$$$$$$$$$$$$$$$$d$$*
                     $$$$$$$$$$$$$$$$$$$$$$$$$P
         ^         .d$$$$$$$$$$$$$$$$$$$$$$$$
          e   .e$$$$*$$$$$$$$$$$$$$$$$$$$$$$$$$e..  e
           *$$$$P     ^$$$$$$$$$$$$$$$$$$$$P  **$$$$
            *          $$$$$$$$$$$$$$$$$$$P
                      .$$*$$$$$$$$$$$$P**$$e
                     z$P   J$$$$$$$$$$$e.  $$c     .
                    d$ .$$$$$$**$$$$$F   $$. .P
             ^%e.  $$   4$$$          ^$$     $$
                *$*     $b           $$       ^
                           $r          $
                            .        $
                             ^
"
 end



 def self.correct_guess
  puts "Nice! You got one!"
  puts
  puts "Guess another letter:"
 end

 def self.incorrect_guess
  puts "You are FALSE!"
  puts
  puts "Guess another letter:"
 end



end

