require 'sprockets/jsx'

describe Sprockets::JSX do
  jsx = <<-JS
        /** @jsx React.DOM */
        React.renderComponent(
          <h1>Hello, world!</h1>,
          document.getElementById('content')
        );
  JS

  js = <<-JS
        /** @jsx React.DOM */
        React.renderComponent(
          React.createElement("h1", null, "Hello, world!"),
          document.getElementById('content')
        );
  JS

  describe '#transform' do
    it 'should transform JSX to Javascript' do
      expect(Sprockets::JSX.transform(jsx)).to eq(js)
    end

    it 'should support the "stripTypes" option' do
      expect(Sprockets::JSX.transform(jsx, stripTypes: true)).to eq(js)
    end

    it 'should support the "harmony" option' do
      expect(Sprockets::JSX.transform(jsx, harmony: true)).to eq(js)
    end
  end

  describe Sprockets::JSX::Template do
    it 'should render JSX to Javascript' do
      template = Sprockets::JSX::Template.new { |t| jsx }
      expect(template.render).to eq(js)
    end
  end
end
