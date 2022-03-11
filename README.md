# SwaggerUiEngine2

Include [swagger-ui](https://github.com/swagger-api/swagger-ui) as Rails engine and document your API with simple YAML files.

This gem is a fork of 'swagger_ui_engine'. Because it is no longer maintainable anymore.

## Versions

Swagger UI version | Rails version
------------------ | ----------------
4.6.2              | >= 6

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'swagger_ui_engine_2'
```

And then execute:
```bash
$ bundle
```

## Usage

### Mount

Add to your `config/routes.rb`

```
mount SwaggerUiEngine2::Engine, at: "/api_docs"
```

You can place this route under `admin_constraint` or other restricted path, or configure basic HTTP authentication.

#### Basic HTTP auth

Set admin username and password in an initializer:

```
# config/initializers/swagger_ui_engine.rb

SwaggerUiEngine2.configure do |config|
  config.admin_username = ENV['ADMIN_USERNAME']
  config.admin_password = ENV['ADMIN_PASSWORD']
end
```

#### Single API documentation

You can define your main documentation url in a hash value (same way as in the versioned documentations) or pass single string with the url:

```
# config/initializers/swagger_ui_engine.rb

SwaggerUiEngine2.configure do |config|
  config.swagger_url = 'open_api.json'
end
```

### Configure
Config Name | Swagger parameter name | Description
--- | --- | ---
config.swagger_url | url | The URL pointing to API definition (normally swagger.json or swagger.yaml)
config.doc_expansion | docExpansion | Controls the default expansion setting for the operations and tags. It can be 'list' (expands only the tags), 'full' (expands the tags and operations) or 'none' (expands nothing).
config.model_rendering | defaultModelRendering | Controls how the model is shown when the API is first rendered. (The user can always switch the rendering for a given model by clicking the 'Model' and 'Example Value' links.)
config.layout | layout | The name of a component available via the plugin system to use as the top-level layout for Swagger UI. It can be 'StandaloneLayout' (shows the url) and 'BaseLayout' (hides the url) |
config.validator_enabled | validatorUrl | Enables documentation validator.  Defaults to `false` (`validatorUrl: 'null'`).

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
