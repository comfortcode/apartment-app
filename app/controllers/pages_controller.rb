class PagesController < ApplicationController
  def home
    @search = Apartment.search(params[:q])
  end

  def about
  end

  def contact
  end
end
