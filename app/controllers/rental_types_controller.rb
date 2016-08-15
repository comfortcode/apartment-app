class RentalTypesController < ApplicationController
  before_action :set_rental_type, only: [:destroy] # :show, :edit, :update
  
  def index
    @rental_types = RentalType.all
    @new_rental_type = RentalType.new
  end 
  
  def destroy
    @rental_type.destroy
    redirect_to rental_types_path
  end
  
  def create
    @rental_type = RentalType.new(rental_type_params)

     if @rental_type.save
       flash[:notice] = "The new rental type was saved."
     else
       flash[:error] = "There was an error saving the new rental type. Please try again."
     end
     redirect_to rental_types_path
  end

  def show
  end

  def new
  end

  def edit
  end

  private
    def set_rental_type
      @rental_type = RentalType.find(params[:id])
    end

    def rental_type_params
      params.require(:rental_type).permit(:name, :notes)
    end


end
