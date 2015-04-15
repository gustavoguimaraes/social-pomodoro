class RolesController < ApplicationController
  before_action :set_role, only: [:show, :update, :destroy]

  def index
    @roles = Role.all
    render "/roles"
  end

  def show
    render "/role"
  end

  def create
    @role = Role.new(role_params)

    if @role.save
      render_success("Role was successfully created.")
    else
      render_error(@role.descriptive_error)
    end
  end

  def update
    if @role.update(role_params)
      render_success("Role was successfully updated.")
    else
      render_error(@role.descriptive_error)
    end
  end

  def destroy
    @role.destroy
    render_success("Role was successfully destroyed.")
  end

  private

  def set_role
    @role = Role.find(params[:id])
  end

  def role_params
    params.require(:role).permit(Role::PERMITTED_PARAMS)
  end
end
