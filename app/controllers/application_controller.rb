class ApplicationController < ActionController::Base
  around_action :switch_locale

  def switch_locale(&action)
    I18n.with_locale(locale_from_header, &action)
  end

  private

  def locale_from_header
    lang = request.env['HTTP_ACCEPT_LANGUAGE']
    lang.present? ? lang.scan(/^[a-z]{2}/).first : 'es'
  end
end
