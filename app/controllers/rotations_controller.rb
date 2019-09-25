class RotationsController < ApplicationController
  before_action :require_login

  def index
    @rotations = current_user.rotations.order(:id)
  end

  def show
    @rotation = current_user.rotations.find(params[:id])
  end

  def new
    @rotation = current_user.rotations.build
  end

  def create
    @rotation = current_user.rotations.build(rotation_params)

    if @rotation.save
      redirect_to rotation_path(@rotation), notice: "Rotation created!"
    else
      @errors = @rotation.errors.full_messages
      render :new
    end
  end

  def edit
    @rotation = current_user.rotations.find(params[:id])
  end

  def update
    @rotation = current_user.rotations.find(params[:id])

    if @rotation.update_attributes(rotation_params)
      redirect_to rotation_path(@rotation), notice: "Rotation updated!"
    else
      @errors = @rotation.errors.full_messages
      render :edit
    end
  end

  def destroy
    rotation = current_user.rotations.find(params[:id])
    rotation.destroy
    redirect_to rotations_path, notice: "Deleted rotation: #{rotation.name}"
  end

  private
    def rotation_params
      params.require(:rotation).permit(:name, :description)
    end
end
