# Connpass

A Crystal wrapper for the connpass API inspired by [connpass](https://github.com/deeeki/connpass).

## Installation

Add it to `Projectfile`

```crystal
deps do
  github "pine613/crystal-connpass"
end
```

## Usage

See example `example/event_search.cr`.

```crystal
require "connpass"

res = Connpass.event_search(keyword: 'Python')
res.events.each{|e| puts e.title }
```

## Contributing

1. Fork it ( https://github.com/[your-github-name]/crystal-connpass/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Acknowledgement

Thank you.

- [deeeki](https://github.com/deeeki/connpass)

## License
MIT License
