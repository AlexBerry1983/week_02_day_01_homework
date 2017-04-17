require('minitest/autorun')
require('minitest/rg')
require_relative('./w2_d1_sports.rb')

class TestSportsTeam < MiniTest::Test

  def setup
    @team = Sports_team.new("Brighton", ["D Stockdale", "B Saltor", "G Bong", "L Dunk", "U Humemeier", "D Stevens", "B Kayal", "J Skalak", "S Baldock", "T Hemed", "A Knockaert"], "Chris Hughton")
  end

  def test_get_team_name
    assert_equal("Brighton", @team.team_name)
  end

  def test_get_players
    assert_equal(["D Stockdale", "B Saltor", "G Bong", "L Dunk", "U Humemeier", "D Stevens", "B Kayal", "J Skalak", "S Baldock", "T Hemed", "A Knockaert"], @team.players)
  end

  def test_get_coach
    assert_equal("Chris Hughton", @team.coach)
  end

  def test_set_new_coach
    @team.coach = "Alex Berry"
    assert_equal("Alex Berry", @team.coach)
  end

  def test_add_new_player
    @team.add_new_player("Eoghan")
    assert_equal(["D Stockdale", "B Saltor", "G Bong", "L Dunk", "U Humemeier", "D Stevens", "B Kayal", "J Skalak", "S Baldock", "T Hemed", "A Knockaert", "Eoghan"], @team.players)
  end

  def test_check_if_player_is_in_team
    assert(@team.check_if_player_is_in_team("G Bong"))
  end

  def test_get_points
    assert_equal(0, @team.points)
  end

  def test_change_points_for_result
    @team.change_points_for_result("win")
    assert_equal(3, @team.points)
  end
end

