class OwnersController < ApplicationController
  def index
    @owners = Owner.all
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

  def edit
    @owner = Owner.find(params[:id])
  end

  def update
    @owner = Owner.find(params[:id])
    if @owner.update(owner_params)
      redirect_to @owner, notice: "Owner was updated successfully"
    else
      render action: 'edit'
    end
  end


  def destroy
    @owner = Owner.find(params[:id])
    if @owner.destroy
      redirect_to owners_url, notice: "Owner was successfully deleted"
    end
  end


  private
    def owner_params
      params.require(:owner).permit(:first_name, :last_name, :email, :company)
    end
end
