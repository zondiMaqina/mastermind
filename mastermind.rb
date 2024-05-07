# module for player to use to crack code made by computor or visa versa
class CrackCode
  @@digits = [1, 2, 3, 4, 5, 6, 7, 8]
  @@tries = 12
  @@computor_code = []

  def initialize
    @digit1 = @@computor_code[0]
    @digit2 = @@computor_code[1]
    @digit3 = @@computor_code[2]
    @digit4 = @@computor_code[3]

      puts "WELCOME TO THE ``MASTERMIND`` :)"
      print "\nThe rules are simple:\nYou must CRACK a 4-digit code created from integers [1 - 6] by the computoe or CREATE the code and play against the computor to crack YOUR code\nYou have 12 tries before the game ends and if you or the computor manages to crack the code in less than 12 tries that player wins\n"
  
      puts "\nEach time you will get feedback on your guess\n(W) => means your code has a correct digit but in the wrong position\n(B) => means you have the right digit at the right position"
      choose_position
  end

  private

  def choose_position
    puts "\nTo be the code Cracker Enter 'create'\nTo be the code creator Enter 'crack'"
    user_input = gets.chomp  

    until user_input == 'create' || user_input == 'crack'
      puts "Please choose 'create' or 'crack' to choose position"
      user_input = gets.chomp  
    end

    if user_input == 'create'
      create_code
    elsif user_input == 'crack'
      crack_code
    end
  end

  def crack_code
      4.times do 
        random_number = @@digits.sample
        @@computor_code.push(random_number)
      end
      print "#{@@computor_code}\n"
      @digit1 = @@computor_code[0]
      @digit2 = @@computor_code[1]
      @digit3 = @@computor_code[2]
      @digit4 = @@computor_code[3]
    
      puts "crack the code created by the computor"
      user_code = gets.chomp
      user_code = user_code.gsub(" ", "")

      while @@tries > 0
          @@tries -= 1

          if @@tries <= 0
              puts "You lose the game boo boo"
              break
          elsif user_code.length != 4 || user_code.split(" ").all?{|num| num.to_i == 0}
              puts "#{@@tries} tries left"
              puts 'invalid...FOUR DIGITS ONLY BRUH'
              user_code = gets.chomp
          elsif user_code == @@computor_code.join("")
              puts "#{@@tries} tries left"
              puts "YOU WIN BROTHER"
              puts @digit1
              break
          else
              puts "#{@@tries} tries left"
              puts "try again"
              user_code = gets.chomp
          end
      end
  end

  def create_code
    puts "create the 4-digit code"
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

CrackCode.new
