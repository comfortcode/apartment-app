class CurrenciesController < ApplicationController
  def index
    @currencies = Currency.all
    @new_currency = Currency.new
  end 

  def show
  end

  def new
  end

  def edit
  end
end
