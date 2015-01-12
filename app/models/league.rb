class League < ActiveRecord::Base
	has_many :players, through: :games
	has_many :games
end
