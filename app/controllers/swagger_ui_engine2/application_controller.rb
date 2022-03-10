module SwaggerUiEngine2
  class ApplicationController < ActionController::Base
    include SwaggerUiEngine2::AuthConfigParser

    protect_from_forgery with: :exception
    layout false

    before_action :authenticate_admin

    protected

    def authenticate_admin
      return unless basic_authentication_enabled?

      authenticate_or_request_with_http_basic do |username, password|
        username == admin_username && password == admin_password
      end
    end
  end
end
