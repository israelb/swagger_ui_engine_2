require_relative "lib/swagger_ui_engine_2/version"

Gem::Specification.new do |spec|
  spec.name        = "swagger_ui_engine_2"
  spec.version     = SwaggerUiEngine2::VERSION
  spec.authors     = ["Israel"]
  spec.email       = ["israelb.aceves@gmail.com"]
  # spec.homepage    = "TODO"
  spec.summary     = "Summary of SwaggerUiEngine2."
  spec.description = "Description of SwaggerUiEngine2."
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 6.0.0"
  spec.add_dependency "sprockets-rails"
end
