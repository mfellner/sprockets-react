require 'execjs'
require 'react/source'
require 'react/jsx/template'

module React
  module JSX
    def self.transform_options
      @@transform_options
    end

    def self.transform_options=(transform_options)
      @@transform_options = transform_options
    end

    def self.context
      @context ||= begin
        # If execjs uses therubyracer, there is no 'global'.
        # Make sure we have it so JSX script can work properly.
        global = 'var global = global || this;'
        react = File.read(React::Source.bundled_path_for('JSXTransformer.js'))
        ExecJS.compile(global + react)
      end
    end

    def self.transform(code, options={})
      context.call('JSXTransformer.transform',
                   code,
                   stripTypes: options[:strip_types],
                   harmony: options[:harmony]
      )['code']
    end
  end
end
