require 'sprockets/react'

describe Sprockets::React do
  describe Sprockets::React.template_extensions do
    it { should include('jsx') }
  end

  describe '#template_extensions' do
    it 'should be configurable with custom file extensions' do
      Sprockets::React.configure do |conf|
        conf.extensions = %w( jsx jsx.js js.jsx )
      end
      expect(Sprockets::React.template_extensions).to include('jsx', 'jsx.js', 'js.jsx')
    end
  end
end
