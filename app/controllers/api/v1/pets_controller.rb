class Api::V1::PetsController < Api::V1::BaseController
  before_action :set_pet, only: %i[show update destroy]

  def index
    if params[:user_id].to_i == @current_user.id
      @pets = Pet.select { |pet| pet.user_id == params[:user_id].to_i }
    else
      @pets = Pet.all
    end
    render json: { pets: @pets }
  end

  def show
    render json: { pet: @pet }
  end

  #add user_id of the pet after authentication
  def create
    set_user
    @pet = Pet.new(pet_params)
    if @pet.save
      render json: { pet: @pet }
    else
      render json: { status: 'fail', msg: 'failed to create' }, status: 400
    end
  end

  def update
    if @pet.update(pet_params)
      render json: { pet: @pet }
    else
      render json: { status: 'fail', msg: 'failed to create' }, status: 400
    end
  end

  def destroy
    @pet.destroy
    render json: { pets: @current_user.pets }
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def pet_params
    params.require(:pet).permit(:name, :breed, :age, :personality, :gender, :address, :animal, :user_id)
  end
end
