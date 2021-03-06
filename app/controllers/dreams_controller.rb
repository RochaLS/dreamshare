class DreamsController < ApplicationController
  before_action :set_dreams, only: [:show, :edit, :update, :destroy]
  def index
    # @dreams = Dream.all
    @dreams = policy_scope(Dream).order(created_at: :desc)
  end

  def new
    @dream = Dream.new
    authorize @dream
  end

  def create
    @dream = Dream.new(dream_params)
    @dream.user = current_user
    authorize @dream
    if @dream.save
      if @dream.private == true
        redirect_to user_path(current_user)
      else
        redirect_to dreams_path
      end

    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
    @dream.update(dream_params)
    redirect_to dreams_path
  end

  def destroy
    @dream.destroy
    if @dream.private == true
      redirect_to user_path(current_user)
    else
      redirect_to dreams_path
    end
  end

  def set_dreams
   @dream = Dream.find(params[:id])
   authorize @dream
  end

  def dream_params
    params.require(:dream).permit(:title, :description, :private)
  end
end
