class AreasController < ApplicationController
  def index
    areas = Area.all
    render jsonapi: areas
  end

  def show
    area = Area.find(params[:id])
    render jsonapi: area, include: [:teams]
  end
end
