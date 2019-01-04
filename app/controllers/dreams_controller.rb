class DreamsController < ApplicationController
  before_action :set_dreams, only: [:show, :edit, :update, :destroy]
  def index
    @dreams = Dream.all
  end

  def new
    @dream = Dream.new
  end

  def create
    @dream = Dream.new(dream_params)
    @dream.user = current_user
    @dream.save
    redirect_to dreams_path
  end

  def edit
  end

  def show
    set_dreams
  end

  def update
    @dream.update(dream_params)
    redirect_to dreams_path
  end

  def destroy
    @dream.destroy
    redirect_to dreams_path
  end

  def set_dreams
   @dream = Dream.find(params[:id])
  end

  def dream_params
    params.require(:dream).permit(:title, :description)
  end
end
