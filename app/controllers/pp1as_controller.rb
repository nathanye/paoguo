class Pp1asController < ApplicationController
  def new
    @pp1 = Pp1.find(params[:pp1_id])
    @pp1a = Pp1a.new
  end

  def create
    @pp1 = Pp1.find(params[:pp1_id])
    @pp1a = Pp1a.new(pp1a_params)
    @pp1a.pp1 = @pp1
    @pp1a.user = current_user
    if @pp1a.save
      redirect_to pp1_pp1a_path(@pp1a)
    else
      render :new
    end
  end

  def show
    @pp1 = Pp1.find(params[:pp1_id])
    @pp1a = Pp1a.find(params[:id])
  end
  private
  def pp1a_params
    params.require(:pp1a).permit(:content)
  end
end
