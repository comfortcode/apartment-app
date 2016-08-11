class CurrenciesController < ApplicationController
  def index
    @currencies = Currency.all
    @new_currency = Currency.new
  end 

  def destroy
    @currency = Currency.find(params[:id])
    @currency.destroy
    redirect_to currencies_path
  end

  def show
  end

  def new
  end

  def edit
  end
end
