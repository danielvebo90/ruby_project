class Game

 attr_reader :file  #atributos

  def initialize()
    @file=File.open("questions.txt",'r')

  end

  def get_q
    qq=""
    c=0

    @file.each_line.with_index do |l,i|


        y=l.rstrip()
        x = y.chars

        if x.last != "?"

          answer=l.downcase.to_s.rstrip

          useranswer=gets.chomp.downcase.to_s

          switch=0
          while switch==0

            if answer==useranswer
              switch=1
              puts""
              puts "Excelent"

            else
              puts""
              puts "O sorry you ara a dunk try again"
              puts""
              puts qq

              useranswer=gets.chomp.downcase.to_s

            end

          end
        else
          c=c+1
          puts""
          puts "The question number #{c} is:"
          qq=l.downcase.to_s.rstrip
          puts ""
          puts l

        end



      end
      puts""

      puts "CONGRATULATIONS YOU PASS"
  end

  def begining

    puts "LET'S PLAY"
    puts "PLAYER, What is your name?:"
    jugador = gets.chomp
    puts "Welcome #{jugador} to our game."

    puts  "If you want to play type Y, if you don't want type N :"
    inicio = gets.chomp
    if inicio.downcase == "y"
      puts " #{jugador} Lets go to start with the first question"

    elsif inicio.downcase == "n"
      puts "BYE"
      exit
    else
      puts "WRONG ANSWER!!!!"

      begining()
    end

  end




end





quiz=Game.new
quiz.begining
quiz.get_q
