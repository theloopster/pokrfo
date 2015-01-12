class Game < ActiveRecord::Base
	belongs_to :league
	has_and_belongs_to_many :players
	has_many :events

	accepts_nested_attributes_for :events, allow_destroy: true
end
