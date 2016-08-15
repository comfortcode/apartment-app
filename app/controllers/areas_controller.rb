class AreasController < ApplicationController
  before_action :set_area, only: [:destroy] # :show, :edit, :update
  
  def index
    @areas = Area.all
    @new_area = Area.new
  end 
  
  def destroy
    @area.destroy
    redirect_to areas_path
  end
  
  def create
    @area = Area.new(area_params)

     if @area.save
       flash[:notice] = "The new area was saved."
     else
       flash[:error] = "There was an error saving the new area. Please try again."
     end
     redirect_to areas_path
  end

  def show
  end

  def new
  end

  def edit
  end

  private
    def set_area
      @area = Area.find(params[:id])
    end

    def area_params
      params.require(:area).permit(:name, :notes)
    end

end