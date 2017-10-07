class Player

  def initialize
    @gold_coin = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    @lives +=1
  end

  def collect_treasure
    @gold_coin += 1
    if @gold_coin % 10 == 0
      level_up
    end
  end

  def do_battle (damage)
    @health_points -= damage
    if @health_points <= 0
      @lives -= 1
      if @lives < 0
        restart
      end
      @health_points = 10
    end
  end

  def restart
    @gold_coin = 0
    @lives = 5
    @health_points = 10
  end

end

p player1 = Player.new

player1.do_battle(3)

p player1

player1.do_battle(9)

p player1

31.times do
player1.collect_treasure
p player1
end
