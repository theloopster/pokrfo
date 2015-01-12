class ChangeGamesHostsToString < ActiveRecord::Migration
  	def up
  	change_column :games, :host, :string
  end
    def down
  	change_column :games, :host, :integer
  end
end
