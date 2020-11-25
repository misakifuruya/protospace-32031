class UsersController < ApplicationController
  def show
    # ログインユーザー↓
    # @name = user.name

    @user = User.find(params[:id])
    @prototypes = @user.prototypes.includes(:user)

 
  end
end
