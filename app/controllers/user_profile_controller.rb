class UserProfileController < ApplicationController
  
  def show
  	@user = User.find(current_user.id)
  	@courses = @user.courses
  	if @user
  		render action: :show
  	else
  		render file: 'public/404', status: 404, formats: [:html]
  	end

  end
end
