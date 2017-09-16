class UsersController < ApplicationController
	before_action :authenticate_user!
    before_action :my_page_only, only: [:show]



  def show
  	@user = User.find(params[:id])
  	@user_posts = @user.posts
  end


private 

def my_page_only
  @user = User.find(params[:id])

  if current_user != @user
    redirect_to root_path, notice: "Sorry, you can only view your own profile."
  end
end


end
