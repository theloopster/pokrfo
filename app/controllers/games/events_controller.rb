class Games::EventsController < ApplicationController
	before_filter :set_game

	def index
		@events = @game.events.all
	end
	def show
		@event = @game.event.find(params[:id])
	end
	def new
		@event = @game.build_event	
	end
	def create
		@event = Event.new(game_params)
		if @event.save
			redirect_to events_path 
		else
			render :new
		end
	end

	def destroy
		@event = @game.event.find(params[:id])
		@event.destroy
		redirct_to events_path
	end

  def event_params
    params.require(:event).permit(:game_id, :action, :amount, :player_id, :id)
	end

	def set_game
		@game = Game.find(params[:game_id])
	end
end

