# Connpass

[![Build Status](https://travis-ci.org/pine613/crystal-connpass.svg?branch=master)](https://travis-ci.org/pine613/crystal-connpass)

A Crystal wrapper for the [Connpass](http://connpass.com/) API inspired by [Ruby's implementation](https://github.com/deeeki/connpass).

## Installation

Add it to `Projectfile`

```crystal
deps do
  github "pine613/crystal-connpass"
end
```

## Usage

See example `example/event_search.cr` and [Official API reference](http://connpass.com/about/api/).

```crystal
require "connpass"

res = Connpass.event_search({ "keyword" => "Crystal" })
res.events.each{|e| puts e.title }
```

## Contributing

1. Fork it ( https://github.com/pine613/crystal-connpass/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Acknowledgement

Thank you.

- [deeeki](https://github.com/deeeki/connpass)

## License
MIT License
