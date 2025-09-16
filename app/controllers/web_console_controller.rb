class WebConsoleController < ApplicationController
  # Skip CSRF protection since console will handle its own security
  skip_before_action :verify_authenticity_token, if: -> { defined?(verify_authenticity_token) }
  
  def index
    # Call the console helper provided by web-console gem
    console
    
    # Render a simple view that will have the console injected
    render :index
  end
end