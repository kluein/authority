require 'rails'

module Authority
  class Railtie < ::Rails::Railtie

    initializer "authority.controller" do
      # Include here instead of ApplicationController to avoid being lost when
      # classes are reloaded in Rails' development mode
      ActiveSupport.on_load(:action_controller) do
        include Authority::Controller
      end
    end

  end
end
