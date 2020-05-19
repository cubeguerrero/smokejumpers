class MembersController < ApplicationController
  def index
    members = Member.all
    render jsonapi: members
  end

  def show
    member = Member.find(params[:id])
    render jsonapi: member, include: [:team]
  end

  def create
    member = Member.new(member_params)
    if member.save
      render jsonapi: member
    else
      render jsonapi_errors: member.errors, status: 422
    end
  end

  def update
    member = Member.find(params[:id])
    if member.update(member_params)
      render jsonapi: member
    else
      render jsonapi_errors: member.errors, status: 422
    end
  end

  def destroy
    member = Member.find(params[:id])
    member.destroy
    head 200
  end

  private

  def member_params
    params.require(:member).permit(:name, :age, :bio, :team_id)
  end
end
