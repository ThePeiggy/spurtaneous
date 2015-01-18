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
