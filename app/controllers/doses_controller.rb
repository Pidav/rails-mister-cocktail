class DosesController < ApplicationController
  # template for class dosesController < ApplicationController
  # replace Dose / doses / dose
  before_action :set_dose, only: [:destroy]

  # def index
  #   @doses = Dose.all
  # end

  # def show
  # end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail) # vers la show du cocktail
    else
      render :new
    end
  end

  # def edit
  # end

  # def update
  #   @dose.update(dose_params)
  #   redirect_to dose_path(@dose) # vers la show
  # end

  def destroy
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end
end
