module Cequel
  module Devise
    class Railtie < Rails::Railtie
      generators do
        require 'cequel/devise/record_generator'
      end
    end
  end
end
