class CollegesController < ApplicationController
  def index
    @colleges = College.all
  end

  def show
    @colleges = College.find(params[:id])
  end

  def new
    @colleges = College.new
  end

  def create
    College.create(college_params)
    redirect_to root_path
  end

  private

  def college_params
    params.require(:college).permit(:team, :mascot)
  end
end
