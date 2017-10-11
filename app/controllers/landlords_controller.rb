class LandlordsController < OpenReadController
  before_action :set_landlord, only: [:show, :update, :destroy]

  # GET /landlords
  def index
    @landlords = Landlord.all

    render json: @landlords
  end

  def mylandlords
    @my_landlords = current_user.landlords

    render json: @myLandlords
  end

  # GET /landlords/1
  def show
    render json: @landlord
  end

  # POST /landlords
  def create
    @landlord = current_user.landlords.build(landlord_params)

    if @landlord.save
      render json: @landlord, status: :created, location: @landlord
    else
      render json: @landlord.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /landlords/1
  def update
    if @landlord.update(landlord_params)
      render json: @landlord
    else
      render json: @landlord.errors, status: :unprocessable_entity
    end
  end

  # DELETE /landlords/1
  def destroy
    @landlord.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_landlord
      @landlord = Landlord.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def landlord_params
      params.require(:landlord).permit(:firstname, :user_id, :address)

    end
end
