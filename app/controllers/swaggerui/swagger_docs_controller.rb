module Swaggerui
  class SwaggerDocsController < ApplicationController
    include Swaggerui::ConfigParser

    before_action :set_configs

    def index
      @swagger_url = @swagger_url[params[:id].to_sym] unless single_doc_url?
    end

    private

    def set_configs
      Swaggerui::DEFAULTS.keys.each do |key|
        instance_variable_set("@#{key}", self.send("set_#{key}"))
      end
    end

    def single_doc_url?
      @swagger_url.is_a?(String)
    end
  end
end
