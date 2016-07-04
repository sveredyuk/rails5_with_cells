class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  skip_before_filter :verify_authenticity_token, only: [:destroy]

  def view(*args)
    render html: cell(*args)
  end
end
