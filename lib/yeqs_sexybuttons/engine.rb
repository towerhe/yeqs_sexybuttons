require "yeqs_sexybuttons"
require "rails"

module Yeqs
  module Sexybuttons 
    class Engine < Rails::Engine
      initializer 'yeqs_sexybuttons.helper' do |app|
        ActionView::Base.send :include, SexybuttonHelper
      end
    end
  end
end
