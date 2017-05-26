class Pp1sController < ApplicationController

  def index
    @pp1s = Pp1.all
  end
  def new
    @pp1 = Pp1.new
  end
  def create
    @pp1 = Pp1.find(params[:id])
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
end
