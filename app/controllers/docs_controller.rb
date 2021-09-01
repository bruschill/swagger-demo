class DocsController < ApplicationController
  include Swagger::Blocks

    swagger_root do
      key :swagger, '2.0'
      info do
        key :version, '1.0.0'
        key :title, 'Credly Badges'
        key :description, 'A sample API that uses Credly as an example to ' \
                        'demonstrate features in the swagger-2.0 specification'
        key :termsOfService, 'http://helloreverb.com/terms/'
        contact do
          key :name, 'Credly'
        end
        license do
          key :name, 'MIT'
        end
      end
      tag do
        key :name, 'Badges'
        key :description, 'Badge operations'
        externalDocs do
          key :description, 'Find more info here'
          key :url, 'https://swagger.io'
        end
      end
      key :host, 'credly.local:5000'
      key :basePath, '/api/v1'
      key :consumes, ['application/json']
      key :produces, ['application/json']
    end

    # A list of all classes that have swagger_* declarations.
    SWAGGERED_CLASSES = [
      API::V1::BadgesController,
      Docs::Models::Badge,
      Docs::Models::Error,
      self
    ].freeze

  def index
    render json: Swagger::Blocks.build_root_json(SWAGGERED_CLASSES)
  end

  def show

  end
end
