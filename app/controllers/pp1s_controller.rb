class Pp1sController < ApplicationController

  def index
    @pp1s = Pp1.all
  end
  def new
    @pp1 = Pp1.new
  end
  def create
    @pp1 = Pp1.new(pp1_params)
    @pp1.user = current_user
    if @pp1.save
      redirect_to pp1_path(@pp1)
    else
      render :new
    end
  end
  def show
    @pp1 = Pp1.find(params[:id])
  end
  private
  def pp1_params
    params.require(:pp1).permit(:date, :week, :yinli, :weather, :begin_time, :finish_time, :from_where, :how_to_go, :main_place, :run_begin_time, :run_finish_time, :how_long_time, :how_long_kilos, :stretch_or_not, :how_to_go_back, :back_to_where, :about_people, :about_ideas, :about_serendipities, :about_others)
  end
end