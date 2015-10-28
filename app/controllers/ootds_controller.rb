class OotdsController < ApplicationController
	before_action :find_ootd, only: [:show, :edit, :update, :destroy, :upvote]

	def index
		@ootds = Ootd.all
		if params[:search]
		    @ootds = Ootd.search(params[:search]).order("created_at DESC")
		  	else
		    @ootds = Ootd.all
	 	end

	end

	def show
		@ootds = Ootd.all
		@items = Item.all
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

	def upvote
		@ootd.upvote_by current_user
		redirect_to :back
	end

	private

	def ootd_params
		params.require(:ootd).permit(:trend, :caption, :ootd_img)
	end

	def find_ootd
		@ootd = Ootd.find(params[:id])
	end



end
