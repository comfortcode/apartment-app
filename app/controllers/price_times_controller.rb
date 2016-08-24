class PriceTimesController < ApplicationController
  before_action :set_price_time, only: [:destroy] # :show, :edit, :update
  
  def index
    @price_times = PriceTime.all
    @new_price_time = PriceTime.new
  end 
  
  def destroy
    @price_time.destroy
    redirect_to price_times_path
  end
  
  def create
    @price_time = PriceTime.new(price_time_params)

     if @price_time.save
       flash[:notice] = "The new time was saved."
     else
       flash[:error] = "There was an error saving the new time. Please try again."
     end
     redirect_to price_times_path
  end

  private
    def set_price_time
      @price_time = PriceTime.find(params[:id])
    end

    def price_time_params
      params.require(:price_time).permit(:name, :notes)
    end
end