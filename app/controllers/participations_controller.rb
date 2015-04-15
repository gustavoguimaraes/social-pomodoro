class ParticipationsController < ApplicationController
  before_action :set_participation, only: [:show, :update, :destroy]

  def index
    @participations = Participation.all
    render "/participations"
  end

  def show
    render "/participation"
  end

  def create
    @participation = Participation.new(participation_params)

    if @participation.save
      render_success("Participation was successfully created.")
    else
      render_error(@participation.descriptive_error)
    end
  end

  def update
    if @participation.update(participation_params)
      render_success("Participation was successfully updated.")
    else
      render_error(@participation.descriptive_error)
    end
  end

  def destroy
    @participation.destroy
    render_success("Participation was successfully destroyed.")
  end

  private

  def set_participation
    @participation = Participation.find(params[:id])
  end

  def participation_params
    params.require(:participation).permit(Participation::PERMITTED_PARAMS)
  end
end
