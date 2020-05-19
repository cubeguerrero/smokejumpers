class TeamsController < ApplicationController
  def index
    teams = Team.all
    render jsonapi: teams, include: [:federation]
  end

  def show
    team = Team.find(params[:id])
    render jsonapi: team, include: [:federation]
  end

  def create
    team = Team.new(team_params)

    if team.save
      render jsonapi: team
    else
      render jsonapi_errors: team.errors, status: 422
    end
  end

  def update
    team = Team.find(params[:id])

    if team.update(team_params)
      render jsonapi: team
    else
      render jsonapi_errors: team.errors, status: 422
    end
  end

  def destroy
    team = Team.find(params[:id])
    team.destroy
    head 200
  end

  private

  def team_params
    params.require(:team).permit(:name, :area_id, :federation_id)
  end
end
