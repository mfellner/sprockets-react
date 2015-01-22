require 'react-sprockets'

describe React::JSX do
  describe '#transform' do
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

    it 'should transform JSX to Javascript' do
      expect(React::JSX.transform(jsx)).to eq(js)
    end

    it 'should support the "stripTypes" option' do
      expect(React::JSX.transform(jsx, stripTypes: true)).to eq(js)
    end

    it 'should support the "harmony" option' do
      expect(React::JSX.transform(jsx, harmony: true)).to eq(js)
    end
  end
end
