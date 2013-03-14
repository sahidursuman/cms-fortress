module Cms
  module Fortress
    class Engine < ::Rails::Engine

      initializer 'cms-fortress.setup' do |app|
        app.config.to_prepare do
          Devise::SessionsController.layout "cms/fortress/session"
        end
      end
    end
  end
end
