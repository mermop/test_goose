# Test Goose

This is a gem that honks when an RSpec spec fails.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'test_goose'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install test_goose

## Usage

1. Add `test_goose` to your Gemfile.
2. Run `rspec --format TestGoose`.
3. The goose will honk when a spec fails.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mermop/rspec-honk.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Disclaimer

Please note that using this is a bad idea on several levels. 

Thanks to Jon Rowe, maintainer of [honkhonk](https://github.com/jonrowe/honk) and some other gems. 
