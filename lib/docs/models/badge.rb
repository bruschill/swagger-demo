module Docs
  module Models
    class Badge
      include Swagger::Blocks

      swagger_schema :Badge do
        key :required, [:id, :name]
        property :id do
          key :type, :integer
          key :format, :base64
        end
        property :name do
          key :type, :string
        end
        property :description do
          key :type, :string
        end
      end
    end
  end
end
