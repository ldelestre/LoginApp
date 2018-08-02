class UsersController < ApplicationController
	
	def home
		@users_tab = User.all
	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if 
			user && user.authenticate(params[:session][:password])
			log_in user
			redirect_to user
		else
			flash.now[:danger] = 'Invalid email/password'
			render 'new'
		end
	end

	def show
		@id = params[:id]
		@user = User.find(@id)
	end

	def edit
		@id = params[:id]
		@user = User.find(@id)
		@email = @user.email
	end

	def update
		@user = User.find(params[:id])
		user_param = params.require(:user).permit(:email, :password)
		@user.update(user_param)

		redirect_to root_path
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy

		redirect_to root_path
	end

	def index

	end

end