class CocktailsController < ApplicationController
  # template for class cocktailsController < ApplicationController
  # replace Cocktail / cocktails / cocktail
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @dose = Dose.new
    # @ingredients = @cocktail.ingredients
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail) # vers la show
    else
      render :new
    end
  end

  def edit
  end

  def update
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail) # vers la show
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path # vers l'index
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
