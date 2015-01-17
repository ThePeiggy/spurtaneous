class CausesController < ApplicationController

	def index
		@causes = Cause.all
	end
end
