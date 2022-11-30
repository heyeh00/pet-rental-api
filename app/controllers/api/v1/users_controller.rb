class Api::V1::UsersController < Api::V1::BaseController
  skip_before_action :verify_request
  before_action set_user:, only: :show

  def show
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: { user: @user }
      # render json:, notice: 'Your account has been successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :open_id, :image_url, :gender)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
