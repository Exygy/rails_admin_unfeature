require "rails_admin_update_featured/engine"

module RailsAdminUpdateFeatured
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class Unfeature < RailsAdmin::Config::Actions::Base
        RailsAdmin::Config::Actions.register(self)
        
        register_instance_option :collection do
          true
        end

        register_instance_option :http_methods do
          [:post]
        end

        register_instance_option :controller do
          proc do
            if request.post?
              puts "<<<<<<POST>>>>>>>" * 2
              redirect_to index_path
            end
          end
        end

        register_instance_option :bulkable? do
          true
        end


      end
    end
  end
end


