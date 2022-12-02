class Api::V1::UsersController < Api::V1::BaseController
  before_action :set_user, only: :update


  def update
    @current_user.update(user_params)
    render json: { user: @current_user }
  end

  private

  def user_params
    params.require(:user).permit(:name, :open_id, :image_url, :gender)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
