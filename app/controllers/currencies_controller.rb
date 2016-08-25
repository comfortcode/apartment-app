class CurrenciesController < ApplicationController
  def index
    @currencies = Currency.all
    @new_currency = Currency.new
  end 

  def destroy
    @currency = Currency.find(params[:id])
    unless @currency.destroy
      flash[:notice] = @currency.errors.full_messages[0]
    end 
    redirect_to currencies_path
  end

  def show
  end

  def create
    @currency = Currency.new(params.require(:currency).permit(:name, :symbol))

     if @currency.save
       flash[:notice] = "The new currency was saved."
     else
       flash[:error] = "There was an error saving the new currency. Please try again!"
     end
     redirect_to currencies_path
  end

  def edit
  end
end
