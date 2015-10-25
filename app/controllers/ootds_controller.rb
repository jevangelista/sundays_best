class OotdsController < ApplicationController

	def index
		@ootds = Ootd.all
		render :index
	end

	def show
 		@ootd = Ootd.find(params[:id])
 		render :show
 	end

	def new
		@ootd = Ootd.new
	end

	def create
		ootd_params = params.require(:ootd).permit(:trend, :caption)
		@ootd = Ootd.create(ootd_params)
			redirect_to @ootd, flash: { success: "Successfully uploaded new ootd!" }

	end


	def edit
		id = params[:id]
		@ootd = Ootd.find(id)
		render :edit
	end


	def update
	    ootd_id = params[:id]
	    ootd = Ootd.find(ootd_id)

	    # get updated data
	    updated_attributes = params.require(:ootd).permit(:trend, :caption)
	    # update the creature
	    ootd.update_attributes(updated_attributes)

	    #redirect to show
	    redirect_to "/ootds/#{ootd.id}"  # <-- go to show
	end

	def destroy
		id = params[:id]
		ootd = Ootd.find(id)
		ootd.destroy
		redirect_to "/ootds"
	end


end
