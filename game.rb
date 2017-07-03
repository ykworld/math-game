module MathGame
  class Game
    @@current_player=nil
    @@prev_player=nil

    def initialize(player1, player2)
      @player1 = player1
      @player2 = player2    
    end

    def start
      @@current_player = @player1;
      
      while true
        question = Question.new
        new_question = question.create_question 
        puts "#{@@current_player.name}: #{question.question}"
        answer = gets.chomp
        
        if question.answer == answer.to_i
          puts "YES! You are correct."
        else
          puts "Seriously? No!"
          @@current_player.subtractPoint
        end
        
        if @@current_player.point == 0
          puts "#{@@prev_player.name} wins with a score of #{@@prev_player.point}/3"
          puts "----- GAME OVER -----"
          break
        end

        turn
      end
    end

    private
      def turn
        @@prev_player = @@current_player

        if @@current_player == @player1 
          @@current_player = @player2
        else
          @@current_player = @player1
        end
        puts "P1: #{@player1.point}/3 vs P2: #{@player2.point}/3"
        puts "----- NEW TURN -----"
      end
  end
end