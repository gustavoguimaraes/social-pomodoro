class RoleAssignmentsController < ApplicationController
  before_action :set_role_assignment, only: [:show, :update, :destroy]

  def index
    @role_assignments = RoleAssignment.all
    render "/role_assignments"
  end

  def show
    render "/role_assignment"
  end

  def create
    @role_assignment = RoleAssignment.new(role_assignment_params)

    if @role_assignment.save
      render_success("RoleAssignment was successfully created.")
    else
      render_error(@role_assignment.descriptive_error)
    end
  end

  def update
    if @role_assignment.update(role_assignment_params)
      render_success("RoleAssignment was successfully updated.")
    else
      render_error(@role_assignment.descriptive_error)
    end
  end

  def destroy
    @role_assignment.destroy
    render_success("RoleAssignment was successfully destroyed.")
  end

  private

  def set_role_assignment
    @role_assignment = RoleAssignment.find(params[:id])
  end

  def role_assignment_params
    params.require(:role_assignment).permit(RoleAssignment::PERMITTED_PARAMS)
  end
end
