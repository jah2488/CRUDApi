class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  skip_before_filter :verify_authenticity_token
  after_filter :set_cors

  def set_cors
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-Prototype-Version'
    headers['Access-Control-Max-Age'] = '1728000'
  end

  def options
    set_cors
    head :ok
  end
end
