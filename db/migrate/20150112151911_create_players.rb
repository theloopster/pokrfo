class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first
      t.string :last
      t.string :handle
      t.string :address
      t.string :string
      t.integer :zip

      t.timestamps
    end
  end
end
