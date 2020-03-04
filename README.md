# Unicode::NumericValue [![[version]](https://badge.fury.io/rb/unicode-numeric_value.svg)](https://badge.fury.io/rb/unicode-numeric_value)  [![[travis]](https://travis-ci.org/janlelis/unicode-numeric_value.png)](https://travis-ci.org/janlelis/unicode-numeric_value)

Convert a Unicode character into its numeric value.

Unicode version: **13.0.0** (March 2020)

Supported Rubies: **2.7**, **2.6**, **2.5**, **2.4**

Old Rubies that might still work: **2.3**, **2.2**, **2.1**, **2.0**

## Gemfile

```ruby
gem "unicode-numeric_value"
```

## Usage

Can return Integer, Rational or nil:

```ruby
require "unicode/numeric_value"

Unicode::NumericValue.of("1") # => 1
Unicode::NumericValue.of("Ⅷ") # => 8
Unicode::NumericValue.of("⓳") # => 19
Unicode::NumericValue.of("¾") # => (3/4)
Unicode::NumericValue.of("༳") # => (-1/2)
Unicode::NumericValue.of("𑿀") # => (1/320)
Unicode::NumericValue.of("𖭡") # => 1000000000000
Unicode::NumericValue.of("五") # => 5
Unicode::NumericValue.of("A") # => nil
```

## All Numeric Values

See a list of all numbers in Unicode: [character.construction/numbers](https://character.construction/numbers)

Generated with:

```ruby
require "unicode/numeric_value"
require "unicode/name" # https://github.com/janlelis/unicode-name

puts "Codepoint | Character | Numeric Value | Name\n" \
     "----------|-----------|---------------|-----\n" +
    Unicode::NumericValue.chars.map{ |char|
      [
        format("U+%.4X", char.unpack("U")[0]).rjust(9),
        char.rjust(9),
        Unicode::NumericValue.of(char).inspect.rjust(13),
        Unicode::Name.of(char)
      ].join(" | ")
    }.join("\n")
```


## Also See

- [unicode-x](https://github.com/janlelis/unicode-x): more Unicode related micro libraries

## MIT License

- Copyright (C) 2016-2020 Jan Lelis <https://janlelis.com>. Released under the MIT license.
- Unicode data: https://www.unicode.org/copyright.html#Exhibit1
