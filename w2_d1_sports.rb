class Sports_team

  attr_accessor :coach
  attr_reader :team_name, :players, :points
  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  # def get_team_name
  #   return @team_name
  # end

  # def get_players
  #   return @players
  # end

  # def get_coach
  #   return @coach
  # end

  # def set_new_coach(new_coach) 
  #   @coach = new_coach
  # end

  def add_new_player(new_player)
    @players << new_player
  end

  def check_if_player_is_in_team(player)
    return @players.include?(player)
  end

  def change_points_for_result(result)
    if result == "win" 
      @points += 3
    end
  end

end











