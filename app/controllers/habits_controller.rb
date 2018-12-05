class HabitsController < ApplicationController
  before_action :set_habit, only: [:show, :update, :destroy]
  skip_before_action :authorized

  # GET /habits
  def index
    @habits = Habit.all

    render json: @habits
  end

  # GET /habits/1
  def show
    render json: @habit
  end

  # POST /habits
  def create
    @habit = Habit.new(habit_params)
    javascript_date = params[:habit][:start_date]
    javascript_date_split = javascript_date.split("/")
    to_int = javascript_date_split.map{|x| x.to_i}
    year = to_int[2]
    day = to_int[1]
    month = to_int[0]
    start_date = DateTime.new(year, month, day)
    @habit.start_date = start_date

    if @habit.save

      render json: @habit, status: :created, location: @habit
    else
      render json: @habit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /habits/1
  def update
    if @habit.update(habit_params)
      render json: @habit
    else
      render json: @habit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /habits/1
  def destroy
    @habit.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_habit
      @habit = Habit.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def habit_params
      params.require(:habit).permit(:user_id, :description, :frequency, :cue, :routine, :reward)
    end
end
