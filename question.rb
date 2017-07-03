module MathGame
  class Question
    attr_reader :question, :answer

    def initialize
      @question = ""
      @answer = 0
    end

    def create_question
      num1 = create_random_number
      num2 = create_random_number

      @question = "What does #{num1} plus #{num2} equal?"
      @answer = num1 + num2;
    end

    private
      def create_random_number
        rand(1..20)
      end
  end
end
