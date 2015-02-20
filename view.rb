module View

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

 def you_win
  puts
  puts "YOU LOST SUCKA!"
  puts
 end

 def you_lose

end

