class Api::V1::PetsController < Api::V1::BaseController
  before_action :set_pet, only: %i[show update]

  def index
    @pets = Pet.all
    render json: { pets: @pets }
  end

  def show
    render json: { pet: @pet }
  end

  #add user_id of the pet after authentication
  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      render json: { pet: @pet }
    else
      render json: { status: 'fail', msg: 'failed to create' }, status: 400
    end
  end

  def update
    if @pet.update(pet_params)
      render json: { pet: @pet}
    else
      render render json: { status: 'fail', msg: 'failed to create' }, status: 400
    end
  end

  private
  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :breed, :age, :personality, :gender, :address)
  end
end
