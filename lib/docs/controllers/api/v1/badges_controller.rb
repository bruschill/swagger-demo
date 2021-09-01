module Docs
  module Controllers
    module API::V1::BadgesController
      def self.included(base)
        base.class_eval do
          include Swagger::Blocks

          swagger_path '/badges/{id}' do
            operation :get do
              key :summary, 'Find Badge by ID'
              key :description, 'Returns a single badge'
              key :operationId, 'findBadgeById'
              key :tags, [
              ]
              parameter do
                key :name, :id
                key :in, :path
                key :description, 'ID of Badge to fetch'
                key :required, true
                key :type, :integer
                key :format, :int64
              end
              response 200 do
                key :description, 'badge response'
                schema do
                  key :'$ref', :Badge
                end
              end
              response :default do
                key :description, 'unexpected error'
                schema do
                  key :'$ref', :Error
                end
              end
            end
          end
        end
      end
    end
  end
end
