class Event < ActiveRecord::Base
	enum action: {enter: 0, re_buy: 1, cash: 2}
	belongs_to :game
	belongs_to :player

end
