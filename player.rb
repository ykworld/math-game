module MathGame
  class Player
    attr_accessor :name
    attr_reader :point

    def initialize(name)
      @name = name
      @point = 3;
    end

    def subtractPoint
      @point -= 1;
    end
  end
end
