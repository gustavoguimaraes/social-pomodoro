class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  rescue_from ActionController::RoutingError, with: :not_found

  def not_found(exception = nil)
    if Rails.env.development?
      @message = "404 Not Found: #{request.fullpath}, because: #{exception.inspect}"
    else
      @message = 'Not found'
    end

    respond_to do |format|
      format.html { render 'pages/not_found', status: 404 }
      format.json { render json: { message: @message }, status: 404 }
      format.all { render plain: @message, status: 404 }
    end
  end

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
