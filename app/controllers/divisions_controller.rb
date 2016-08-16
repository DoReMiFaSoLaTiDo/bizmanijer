class DivisionsController < ApplicationController
  before_action :set_division, only: [:show, :edit, :update, :destroy]
  # before_action :get_divisions, only: [:new, :edit]

  def index
    @divisions = Division.all
  end

  def new
    @division = Division.new
  end

  private
    def set_division
      @division = Division.find(params[:id])
    end

    def division_params
      param.require(:division).permit(:id,:name,:code)
    end
end
