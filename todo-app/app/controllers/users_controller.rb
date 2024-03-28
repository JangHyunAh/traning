# app/controllers/users_controller.rb
class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # 회원가입 성공 시 처리, 예: 로그인 페이지로 리다이렉트
      redirect_to login_url, notice: "회원가입에 성공했습니다."
    else
      render :new
    end
  end

  private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
