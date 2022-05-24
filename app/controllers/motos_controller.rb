class MotosController < ApplicationController
  before_action :set_moto, only: [:show, :edit, :update, :destroy]

  def index
    @motos = policy_scope(Moto).order(created_at: :desc)
  end

  def new
    @moto = Moto.new
    authorize @moto
  end

  def create
    @moto = Moto.new(moto_params)
    @moto.user = current_user
    authorize @moto
    if @moto.save
      redirect_to motos_path
    else
      render :new
    end
  end

  def show
    authorize @moto
  end

  def edit
    authorize @moto
  end

  def update
    authorize @moto
    @moto.update(moto_params)
    if @moto.save
      redirect_to moto_path(@moto)
    else
      render :edit
    end
  end

  def destroy
    authorize @moto
    @moto.destroy
    redirect_to motos_path
  end

  private

  def moto_params
    params.require(:moto).permit(:model, :brand, :cylinder, :price, :photo)
  end

  def set_moto
    @moto = Moto.find(params[:id])
  end
end
