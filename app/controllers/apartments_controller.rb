class ApartmentsController < ApplicationController
  before_action :set_apartment, only: [:show, :edit, :update, :destroy]

  def index
    @search = Apartment.search(params[:q])
    @apartments = @search.result
    # @apartments = Apartment.all
  end

  def show
  end

  def new
    @apartment = Apartment.new
  end

  def edit
  end

  def create
    @apartment = current_user.apartments.new(apartment_params)
    
    if @apartment.save
       flash[:notice] = "Congratulations! Your apartment has been added."
       redirect_to apartments_path
    else
       flash[:error] = "There was an error saving your listing. Please try again."
       render :new
    end
  end

  def update
     if @apartment.update_attributes(apartment_params)
       flash[:notice] = "The information was successfully updated."
       redirect_to @apartment
     else
       flash[:error] = "There was an error updating your listing. Please try again."
       render :edit
     end
  end

  def destroy
    if @apartment.destroy
       flash[:notice] = "Your listing was deleted successfully."
       redirect_to apartments_path
     else
       flash[:error] = "There was an error deleting the apartment. Please try again."
       render :show
     end
  end

  private
    def set_apartment
      @apartment = Apartment.find(params[:id])
    end

    def apartment_params
      params.require(:apartment).permit(:street, :from_date, :to_date, :to_date_open, :flex_dates, :price, :price_neg, :agent_fee, :furnished, :package, :flights, :beds, :baths, :description, :currency_id, :area_id, :rental_type_id, :price_time_id)
    end
end