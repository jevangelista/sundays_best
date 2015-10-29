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
		@ootd_items = @ootd.ootd_items
 	end

	def new
		@ootd = current_user.ootds.new
		@ootd_item = @ootd.ootd_items.new
		@item = @ootd_item.build_item
	end

	def create
		@ootd = current_user.ootds.create(ootd_params)

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
			redirect_to ootd_path, flash: { success: "Successfully updated ootd!" }
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