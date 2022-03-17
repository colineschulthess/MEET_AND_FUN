class ExperiencesController < ApplicationController
  before_action :set_experience, only: %i[show edit update]
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @experiences_last = Experience.all.last(6)
    @experiences_first = Experience.all.first(6)
    @experiences_lastminute = Experience.where("date > ?", Date.today).order("date ASC").limit(6)
    @experiences = Experience.all

    if params[:query].present?
      sql_query = "name ILIKE :query OR address ILIKE :query OR description ILIKE :query"
      @experiences = Experience.where(sql_query, query: "%#{params[:query]}%")
    else
      @experiences = Experience.all
    end
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
    @experiences = Experience.all
    @capacity = @experience.capacity
    #@actual_capacity = @capacity - @experience.booking.count
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
