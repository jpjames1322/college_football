class CollegesController < ApplicationController
  def index
  end
  def show
  end
  def new
    @colleges = College.new
  end
  def create
    College.create(college_params)
    if @college.invalid?
    flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
  end
    redirect_to root_path
  end
  private
  def college_params
    params.require(:college).permit(:team, :mascot)
end
