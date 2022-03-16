class ExperiencesController < ApplicationController
  before_action :set_experience, only: %i[show edit update]

  def index
    @experiences = Experience.all
    @experiences_last = Experience.all.last(3)
    @experiences_
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    if @experience.save
      redirect_to experiences_path
    else
      render :new
    end
  end


  def show
  end

  def edit

  end

  def update
    @experience = Experience.update(experience_params)
    if @experience.update
      redirect_to experience_path(experience), notice: 'experience was successfully updated'
    else
      render :edit
    end
  end

  private

  def set_experience
    @experience = Experience.find(params[:id])
  end

  def experience_params
    params.require(:experience).permit(:name, :date, :description, :address, :capacity, :price, :photo)
  end
end
