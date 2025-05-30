class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if !@user.save
      render :new, status: :unprocessable_entity
    end
  end



private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :gender, :email, :phone, :birthdate, :postalcode, :websiteurl, :role, :notes, :termsandconditions)
  end

end
