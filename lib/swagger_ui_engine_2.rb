require "sprockets/railtie"
require "swagger_ui_engine_2/version"
require "swagger_ui_engine_2/engine"
require "swagger_ui_engine_2/configuration"
require "swagger_ui_engine_2/defaults"

module SwaggerUiEngine2
  class << self
    delegate(*Configuration::OPTIONS, to: :configuration)

    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield configuration
    end
  end
end
