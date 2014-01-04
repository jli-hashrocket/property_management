class BuildingsController < ApplicationController
  def index
    @buildings = Building.all
  end

  def new
    @building = Building.new
  end

  def create
    @building = Building.new(building_params)
    if @building.save
      redirect_to @building, notice: "Building was saved successfully."
    else
      render action: 'new'
    end
  end

  def show
    @building = Building.find(params[:id])
  end

  def edit
    @building = Building.find(params[:id])
  end

  def update
    @building = Building.find(params[:id])
    if @building.update
      redirect_to @building, notice: "Building was updated successfully"
    else
      render action: 'edit'
    end
  end

  def destroy
    @building = Building.find(params[:id])
    if @building.destroy
      redirect_to buildings_url, notice: "Building was successfully deleted"
    end
  end

  private
    def building_params
      params.require(:building).permit(:address, :city, :state, :zip, :description)
    end
end
