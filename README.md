# statsdeify

An experimental lib to transmute structured logs to `statsd` measurements.

## Installation

Add this line to your application's Gemfile:

    gem 'statsdeify'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install statsdeify

## Conventions

### Gauges

Produce a log line that contains the following within it:

```
measure=foo.bar value=1
```

## Usage

```ruby
writer = Statsdeify::Writer.new('udp://localhost:8125')
measurement = Statsdeify::Measurement.from_line('measure=foo.bar value=12345')
writer.puts(measurement)
```

## Credit

Giant props to @ryandotsmith and his excellent [`ryandotsmith/l2met`](https://github.com/ryandotsmith/l2met) for inspiration.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
