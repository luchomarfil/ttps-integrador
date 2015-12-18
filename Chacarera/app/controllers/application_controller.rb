class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

    # new lines
  before_filter :set_locale

  private
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale

    # new line
    Rails.application.routes.default_url_options[:locale]= I18n.locale
    # end of new line
  end

end
