class BillboardsController < ApplicationController

before_action :set_billboard, only: [:show, :update, :edit, :destroy]

  def index
    @billboards = Billboard.all
  end

  def show
  end

  def new
    @billboard = Billboard.new
    render partial: "form"
  end

  def create
    @billboard = Billboard.create(billboard_params)
    if @billboard.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit

  end

  def destroy
    @billboard.destroy
    redirect_to root_path
  end

  private
  def billboard_params
    params.require(:billboard).permit(:name)
  end

  def set_billboard
    @billboard = Billboard.find(params[:id])
  end


end
