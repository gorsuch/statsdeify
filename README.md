# statsdeify

An experimental lib to transmute logs to `statsd` measurements.

## Installation

Add this line to your application's Gemfile:

    gem 'statsdeify'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install statsdeify

## Usage

```ruby
sd = Statsdeify.new('udp://statsd.example.com:8125')
sd.handle_line 'measure=foo.bar value=1'
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
