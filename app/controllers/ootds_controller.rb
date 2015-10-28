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
		puts "this is hitting the ootds new controller"

	end

	def create
		@ootd = current_user.ootds.create(ootd_params)

		if @ootd.save
			redirect_to @ootd, flash: { success: "Successfully uploaded new ootd!" }
		else
			render :new
		end
		puts "this is hitting the ootds create controller"
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
		@ootd_items.destroy
		redirect_to "/ootds"
	end

	def upvote
		@ootd.upvote_by current_user
		redirect_to :back
	end

	private

	def ootd_params
		params.require(:ootd).permit(:trend, :caption, :ootd_img, ootd_items_attributes: [:id, :ootd_id, :item_id, items_attributes: [:id, :user_id, :item_image, :item_category, :name, :purchase_link, :item_img]])
	end

	def find_ootd
		@ootd = Ootd.find(params[:id])
	end



end
