class ChangeEventsActionToInteger < ActiveRecord::Migration
  def up
  	change_column :events, :action, :integer
  end
    def down
  	change_column :events, :action, :string
  end
end
