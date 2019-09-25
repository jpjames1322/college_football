class CollegesController < ApplicationController
  def index
    @colleges = College.all
  end

  def show
  end

  def new
    @colleges = College.new
  end

  def create
    College.create(colleges_params)
    if @colleges.invalid?
    flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end
    redirect_to root_path
  end

  private
  
  def college_params
    params.require(:college).permit(:team, :mascot)
  end
end
