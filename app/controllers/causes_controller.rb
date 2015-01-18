class CausesController < ApplicationController

	respond_to :json, only: :add_hit

	before_filter :authorize

	def index
		@causes = nil
		if params[:filter] == 'today'
			@causes = Cause.today
		elsif params[:filter] == 'abandoned'
			@causes = Cause.abandoned
		else
			@causes = Cause.all
		end
	end

	def add_hit
		cause = Cause.find(cause_id_param)
		price = cause.unit_donation
		limit = current_user.limit
		success = -1
		if price <= limit
			cause.add_hit
			current_user.add_point
			respond_with limit: success, hits: cause.hits, money_raised: cause.money_raised
		else
			respond_with limit: limit, hits: cause.hits, money_raised: cause.money_raised
		end
	end

	def show
		@cause = Cause.find(params[:id])
	end

    def cause_id_param
    	params.require(:id)
    end

    def edit
    	@cause = Cause.find(params[:id])
    end

    def update
	  @cause = Cause.find(params[:id])

	  if @cause.update(cause_params)
	    redirect_to current_user
	  else
	    render 'edit'
	  end
    end

	private
	  def cause_params
	    params.require(:cause).permit(:name, :description)
	  end
end
