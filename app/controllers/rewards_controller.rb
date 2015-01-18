class RewardsController < ApplicationController

	def index
		@points = current_user.points
	end
end
