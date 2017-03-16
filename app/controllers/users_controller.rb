class UsersController < ApplicationController

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = "User created"
      redirect_to('/posts')
    else
      render('/posts/new')
    end
  end

  private
  def user_params
    params.require(:user).permit(:name)
  end
end
