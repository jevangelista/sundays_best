class OotdsController < ApplicationController
	before_action :find_ootd, only: [:show, :edit, :update, :destroy]

	def index
		@ootds = Ootd.all
		render :index
	end

	def show
 	end

	def new
		@ootd = current_user.ootds.build
	end

	def create
		@ootd = current_user.ootds.build(ootd_params)

		if @ootd.save
			redirect_to @ootd, flash: { success: "Successfully uploaded new ootd!" }
		else
			render :new
		end

	end

	def edit
	end

	def update
	    if @ootd.update(ootd_params)
			redirect_to @ootd, flash: { success: "Successfully uploaded new ootd!" }
		else
			render :edit
		end
	end

	def destroy
		@ootd.destroy
		redirect_to "/ootds"
	end

	private

	def ootd_params
		params.require(:ootd).permit(:trend, :caption, :ootd_img)
	end

	def find_ootd
		@ootd = Ootd.find(params[:id])
	end



end
