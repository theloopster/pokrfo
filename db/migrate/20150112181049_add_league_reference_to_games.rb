class AddLeagueReferenceToGames < ActiveRecord::Migration
  def change
    add_reference :games, :league, index: true
  end
end
