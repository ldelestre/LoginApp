class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			log_in(user)
			redirect_to user_path(user.id)
		else
			flash.now[:danger] = "Invalid email / password"
			render 'new'
		end
	end

	def destroy
	end
end