# module for player to use to crack code made by computor or visa versa
module CrackCode
    def self.rules
        puts "WELCOME TO THE ``MASTERMIND`` :)"
        print "\nThe rules are simple:\nYou must CRACK a 4-digit code created from integers [1 - 6] or CREATE the 4-digit code from those 6 digits [1 - 6] and play against the computor to crack YOUR code\nYou have 12 tries before the game ends and if you or the computor manages to crack the code created by you or the computor in less than 12 tries you win\n"
    
        puts "\nEach time you will get feedback on your guess\n(W) => means your code has two correct digits but in the wrong position\n(B) => means you have the right digit at the right position"
    end

    def choose_position
      puts "To be the code Cracker Enter 'create'\nTo be the code creator Enter 'crack'"
    end
end

# computor to crack code or create it 
class Computor
  def initialize
    
  end
end

# Player to crack code or create it 
class Player
  def initialize
    
  end
end

CrackCode.rules