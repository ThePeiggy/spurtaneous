class CausesController < ApplicationController

	respond_to :json, only: :add_hit

	before_filter :authorize

	def index
		@causes = Cause.all
	end

	def add_hit
		cause = Cause.find(cause_id_param)
		cause.add_hit
		respond_with hits: cause.hits, money_raised: cause.money_raised
	end

    def cause_id_param
    	params.require(:id)
    end
end
