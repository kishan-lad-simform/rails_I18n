class ApplicationController < ActionController::Base
  around_action :switch_locale
  before_action :set_locale

  def set_locale
    I18n.locale = cookies[:locale] || I18n.default_locale
  end

  def switch_locale(&action)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &action)
  end
end
