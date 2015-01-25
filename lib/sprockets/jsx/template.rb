require 'tilt'

module Sprockets
  module JSX
    class Template < Tilt::Template
      self.default_mime_type = 'application/javascript'

      def prepare
      end

      def evaluate(scope, locals, &block)
        @output ||= Sprockets::JSX.transform(data, Sprockets::JSX.transform_options)
      end
    end
  end
end
