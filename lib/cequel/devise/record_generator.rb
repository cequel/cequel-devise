require 'generators/devise/orm_helpers'

module Cequel
  module Devise
    class RecordGenerator < Rails::Generators::NamedBase
      include ::Devise::Generators::OrmHelpers

      namespace 'cequel:devise'
      argument :attributes, type: :array, default: [],
        banner: 'field:type[:index] field:type[:index]'

      def generate_record
        invoke "cequel",
               [name, 'email:ascii:index', 'encrypted_password:ascii']
      end

      def inject_devise_content
        content = "\n  devise :database_authenticatable, :registerable\n"
        inject_into_file(model_path, content, before: /^end$/) if model_exists?
      end
    end
  end
end

