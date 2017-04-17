require('minitest/autorun')
require('minitest/rg')
require_relative('./w2_d1_sports.rb')

class TestSportsTeam < MiniTest::Test

  def setup
    @team = Sports_team.new("Brighton", ["D Stockdale", "B Saltor", "G Bong", "L Dunk", "U Humemeier", "D Stevens", "B Kayal", "J Skalak", "S Baldock", "T Hemed", "A Knockaert"], "Chris Hughton")
  end

  def test_get_team_name
    assert_equal("Brighton", @team.get_team_name)
  end

  def test_get_players
    assert_equal(["D Stockdale", "B Saltor", "G Bong", "L Dunk", "U Humemeier", "D Stevens", "B Kayal", "J Skalak", "S Baldock", "T Hemed", "A Knockaert"], @team.get_players)
  end

  def test_get_coach
    assert_equal("Chris Hughton", @team.get_coach)
  end

  def test_set_new_coach
    @team.set_new_coach("Alex Berry")
    assert_equal("Alex Berry", @team.get_coach)
  end


end