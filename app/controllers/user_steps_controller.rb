class UserStepsController < ApplicationController
	include Wicked::Wizard
  	steps :personal #, :social
  
  	def show
  		@user = current_user
   		render_wizard
   	end

   	def new
   		@user = User.new
   	end

	def create
  		@user = User.new(params[:user])
  		if @user.save
    		session[:user_id] = @user.id
    		redirect_to user_steps_path
  		else
    		render :new
  		end
	end



end

