module SwaggerUiEngine2
  class Configuration
    # Configurable options
    OPTIONS = %i[
      admin_username
      admin_password
      swagger_url
      doc_expansion
      model_rendering
      layout
      validator_enabled
    ].freeze

    attr_accessor(*OPTIONS)
  end
end
