class AddGamesPlayersToEvents < ActiveRecord::Migration
  def change
    add_reference :events, :game
    add_reference :events, :player, index: true
    add_index :events, [:game_id, :player_id]

  end
end
