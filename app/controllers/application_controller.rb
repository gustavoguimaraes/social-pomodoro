class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def home
    render "pages/home"
  end

  protected

  def render_error(message = "Error")
    render json: { message: message }, status: :bad_request
  end

  def render_success(message = "Success")
    render json: { message: message }, status: :ok
  end
end
