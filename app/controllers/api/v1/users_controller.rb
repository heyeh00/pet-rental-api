class Api::V1::UsersController < Api::V1::BaseController
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path, notice: 'Your account has been successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end


  def destroy
    @user = User.find(params[:open_id])
    @user.destroy
    redirect_to user_path, notice: 'You have successfully deleted your account.'
  end

  private

  def user_params
    params.require(:user)
  end
end
