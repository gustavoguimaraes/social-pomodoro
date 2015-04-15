class Result
  attr_reader :success, :message, :data

  def initialize(success, message = '', data = {})
    @success = success
    @message = message || ''
    @data = data
  end

  # Shortcut, eg: Result[success, message, data]
  def self.[](success, message = '', data = {})
    Result.new(success, message, data)
  end

  def success?
    !!@success
  end

  def error?
    !success?
  end

  def error
    message if error?
  end

  def notice
    message if success?
  end
end

