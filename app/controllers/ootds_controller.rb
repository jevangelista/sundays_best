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




end
