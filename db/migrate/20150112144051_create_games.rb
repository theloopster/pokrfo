class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :host
      t.date :date

      t.timestamps
    end
  end
end
