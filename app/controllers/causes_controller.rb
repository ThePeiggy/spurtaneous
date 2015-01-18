class CausesController < ApplicationController

	respond_to :json, only: :add_hit

	before_filter :authorize

	def index
		@causes = Cause.all
		if params[:filter] == 'today'
			@causes = @causes.today
		end
		if params[:filter] == 'available'
			@causes = @causes.available(current_user.limit)
		end
		if params[:filter] == 'abandoned'
			@causes = @causes.abandoned
		end
	end

	def add_hit
		cause = Cause.find(cause_id_param)
		price = cause.unit_donation
		limit = current_user.limit
		if price <= limit
			cause.add_hit
			current_user.add_point
			respond_with success: true, hits: cause.hits, money_raised: cause.money_raised
		else
			respond_with success: false, limit: limit, hits: cause.hits, money_raised: cause.money_raised
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

    def new
    	@cause = current_user.causes.new
    end

    def create
    	@cause = current_user.causes.new(cause_params)
	    respond_to do |format|
	      if @cause.save
	        format.html { redirect_to current_user, notice: 'Cause was successfully created.' }
	        format.json { render :show, status: :created, location: @cause }
	      else
	        format.html { render :new }
	        format.json { render json: @cause.errors, status: :unprocessable_entity }
	      end
	    end
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
	    params.require(:cause).permit(:name, :description, :location, :unit_donation)
	  end
end
