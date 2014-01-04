class OwnersController < ApplicationController
  def index
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      redirect_to @owner, notice: "Owner was saved successfully."
    else
      render action: 'new'
    end
  end

  def show
    @owner = Owner.find(params[:id])
  end

  private
    def owner_params
      params.require(:owner).permit(:first_name, :last_name, :email, :company)
    end
end
