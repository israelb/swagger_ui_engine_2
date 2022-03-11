require_relative "lib/swagger_ui_engine_2/version"

Gem::Specification.new do |spec|
  spec.name        = "swagger_ui_engine_2"
  spec.version     = SwaggerUiEngine2::VERSION
  spec.authors     = ["Israel Barba"]
  spec.email       = ["israelb.aceves@gmail.com"]
  spec.homepage    = "https://github.com/israelb/swagger_ui_engine_2"
  spec.summary     = "Mountable Rails engine that serves Swagger UI for your API documentation"
  spec.description = "Mount Swagger UI web console as Rails engine"
  
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 6.0.0"
  spec.add_dependency "sprockets-rails"
end
