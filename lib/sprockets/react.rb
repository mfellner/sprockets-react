require 'sprockets'
require 'sprockets/engines'
require 'sprockets/jsx/template'

module Sprockets
  module React
    extend self

    DEFAULT_EXTENTIONS = %w( jsx ).freeze

    attr_writer :extensions

    def configure
      yield(self)
      register_sprockets
    end

    def template_extensions
      @extensions ||= DEFAULT_EXTENTIONS
    end

    def register_sprockets
      template_extensions.each do |ext|
        Sprockets.register_engine ".#{ext}", Sprockets::JSX::Template
      end
    end

    register_sprockets
  end
end
