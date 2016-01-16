# Connpass
[![Build Status](https://travis-ci.org/pine613/crystal-connpass.svg?branch=master)](https://travis-ci.org/pine613/crystal-connpass)
[![Dependency Status](https://shards.rocks/badge/github/pine613/crystal-connpass/status.svg)](https://shards.rocks/github/pine613/crystal-connpass)
[![devDependency Status](https://shards.rocks/badge/github/pine613/crystal-connpass/dev_status.svg)](https://shards.rocks/github/pine613/crystal-connpass)

A [Crystal](http://crystal-lang.org/) wrapper for the [Connpass](http://connpass.com/) API inspired by [Ruby's implementation](https://github.com/deeeki/connpass).

## Installation

Add it to `shard.yml`

```yaml
dependencies:
  connpass:
    github: pine613/connpass
    branch: master
```

## Usage

See example `example/event_search.cr` and [Official API reference](http://connpass.com/about/api/).

```crystal
require "connpass"

res = Connpass.event_search({ "keyword" => "Crystal" })
res.events.each{|e| puts e.title }
```

## How to run example
First, you should install Crystal compiler, using a tool such as [crenv](https://github.com/pine613/crenv).

```
$ git clone https://github.com/pine613/crystal-connpass.git
$ cd ./crystal-connpass
$ crystal deps
$ crystal run ./example/event_search.cr
Keyword> Ruby
All Ruby 10 events found.

 1: Hacker Tackle
   福岡のあらゆるエンジニアためのコミュニティイベント
   会場: 福岡県Ruby コンテンツ産業振興センター
   日時: 2015-09-26T12:50:00+09:00

 2: Sensu Deep Talks #2
   会場: ニフティ株式会社 セミナールームB
   日時: 2015-10-02T18:30:00+09:00

 3: 第12回 ベイサイドRuby on Rails勉強会@マスマス
   初心者も経験者ももくもくしながら情報交換する会
   会場: mass x mass
   日時: 2015-09-29T19:00:00+09:00

...
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
