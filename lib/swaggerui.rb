require "swaggerui/version"
require "swaggerui/engine"
require "swaggerui/configuration"
require "swaggerui/defaults"

module Swaggerui
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
