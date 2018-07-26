class DosesController < ApplicationController
  def create

  @dose = Dose.new(dose_params)
  @dose.cocktail = Cocktail.find(params[:cocktail_id])
    if @dose.save
  	  redirect_to @dose.cocktail
    else
      render :new
    end	
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def destroy
  	@dose = Dose.find(params[:id])
    @dose.destroy
  end


 private
  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id )
  end

end
