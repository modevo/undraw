require "undraw/helper"

module Undraw
  class FileNotFound < IOError; end

  class Engine < ::Rails::Engine
    initializer 'local_helper.action_controller' do
      ActiveSupport.on_load :action_controller do
        helper Undraw::Helper
      end
    end
  end
end
