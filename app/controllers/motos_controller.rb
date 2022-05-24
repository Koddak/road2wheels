class MotosController < ApplicationController

  def index
    @motos = policy_scope(Moto).order(created_at: :desc)
  end

  def new
    @moto = Moto.new
    authorize @moto
  end

  def create
    @moto = Moto.new(moto_params)
    if @moto.save
      redirect_to motos_path
    else
      render :new
    end
  end


  private

  def moto_params
    params.require(:moto).permit(:model, :brand, :cylinder, :price)
  end
end
