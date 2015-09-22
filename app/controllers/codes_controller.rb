class CodesController < ApplicationController
  def show
    @code = Code.find(params[:id])
  end

  def index
    # Should be checking for active order (not only code itself)
    @code = Code.find_by name: params[:name]

    unless @code.nil?
      redirect_to @code
    else
      flash[:alert] = "Ops... Can't find #{params[:name]}. Please try again with correct one."
      render "welcome/index"
    end
  end
end
