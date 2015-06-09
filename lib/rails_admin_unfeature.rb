require "rails_admin_unfeature/engine"

module RailsAdminUnfeature
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
            success = false
            if request.post?

              unless params[:bulk_ids].blank?
                @objects = list_entries
                if @objects.update_all(featured_type: :unfeatured)
                  success = true
                end
              end
            end
            if success
              flash[:success] = t('admin.flash.successful', name: pluralize(@objects.count, @model_config.label), action: 'unfeatured')                  
            else
              flash[:error] = t('admin.flash.error', name: pluralize(@objects.count, @model_config.label), action: 'not unfeatured')
            end
            redirect_to back_or_index
          end
        end

        register_instance_option :bulkable? do
          true
        end


      end
    end
  end
end


