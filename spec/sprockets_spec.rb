require 'sprockets'

describe Sprockets do

  before(:each) do
    @environment = Sprockets::Environment.new
  end

  it 'should include the JSX template' do
    expect(@environment.engines).to include('.jsx' => Sprockets::JSX::Template)
  end

  it 'should include the JSX extension' do
    expect(@environment.extensions).to include('.jsx')
  end

  it 'should include custom extensions' do
    Sprockets::React.configure do |conf|
      conf.extensions = %w( jsx jsx.js js.jsx )
    end
    expect(@environment.extensions).to include('.jsx', '.jsx.js', '.js.jsx')
  end
end
