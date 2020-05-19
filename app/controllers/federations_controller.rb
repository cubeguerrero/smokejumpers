class FederationsController < ApplicationController
  def index
    federations = Federation.all
    render jsonapi: federations
  end

  def show
    federation = Federation.find(params[:id])
    render jsonapi: federation
  end

  def create
    federation = Federation.new(federation_params)

    if federation.save
      render jsonapi: federation
    else
      render jsonapi_errors: federation.errors, status: 422
    end
  end

  def update
    federation = Federation.find(params[:id])

    if federation.update(federation_params)
      render jsonapi: federation
    else
      render jsonapi_errors: federation.errors, status: 422
    end
  end

  def destroy
    federation = Federation.find(params[:id])
    federation.destroy
    head 200
  end

  private

  def federation_params
    params.require(:federation).permit(:name, :description)
  end
end
