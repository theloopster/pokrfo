class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :game
      t.string :action
      t.integer :amount

      t.timestamps
    end
  end
end
