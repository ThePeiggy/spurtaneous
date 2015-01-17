class CausesController < ApplicationController

	def index
		@causes = Cause.all
	end

	def add_hit
		cause = Cause.find(cause_id_param)
		cause.add_hit
	end

    def cause_id_param
    	params.require(:id)
    end
end
