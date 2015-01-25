# Sprockets-React

## Description

Adds React/JSX support to Sprockets 2.x using the official [React source](https://rubygems.org/gems/react-source).

Based on and inspired by:

* [reactjs/react-rails](https://github.com/reactjs/react-rails)
* [ademin/react-jsx](https://github.com/ademin/react-jsx)
* [jvatic/react-jsx-sprockets](https://github.com/jvatic/react-jsx-sprockets)

## Installation

Add the following line to your Gemfile:

```ruby
gem 'sprockets-react', '~> 0.0.1', github: 'mfellner/sprockets-react'
```

Then install your gems with Bundler:

```ruby
bundle install
```

## Usage

In your application, require *sprockets* and *sprockets-react*:

```ruby
require 'sprockets'
require 'sprockets-react'
```

You can configure custom filename extensions:

```ruby
Sprockets::React.configure do |conf|
  conf.extensions = %w( jsx jsx.js js.jsx )
end
```

Sprockets-react uses [ExecJS](https://github.com/sstephenson/execjs) to run React.
You need to have a compatible JavaScript runtime installed.

## Development

Run tests with RSpec:

```ruby
rspec
```
