class UsersController < ApplicationController

	def index
		@users = User.all
		render :index
	end

	def new
		@user = User.new
		render :new
	end

 	def create
	    user_params = params.require(:user).permit(:name, :email, :username, :password, :password_confirmation, :city, :user_img)
	    @user = User.create(user_params)

	    login(@user) # <-- login the user
    	redirect_to "/users/#{@user.id}"
 	end

 	def show
 		@user = User.find(params[:id])
 		@ootds = current_user.ootds.all
 		render :show
 	end


end
