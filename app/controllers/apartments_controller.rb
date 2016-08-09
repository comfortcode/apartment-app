class ApartmentsController < ApplicationController
  before_action :set_apartment, only: [:show, :edit, :update, :destroy]

  def index
    @apartments = Apartment.all
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
  end

  def update
  end

  def destroy
    @apartment.destroy
  end

  private
    def set_apartment
      @apartment = Apartment.find(params[:id])
    end

    def apartment_params
      params.require(:apartment).permit(:street, :from_date, :to_date, :to_date_open, :flex_dates, :price, :price_neg, :agent_fee, :furnished, :package, :flights, :beds, :baths, :description)
    end
end