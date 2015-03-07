# Percentrank

Add Array#percentrank(value) and Range#percentrank(value).

Function description, See [PERCENTRANK function - Excel - Office.com](http://office.microsoft.com/en-us/excel-help/percentrank-function-HP010335656.aspx)
(in Japanese: [PERCENTRANK 関数 - Excel - Office.com](http://office.microsoft.com/ja-jp/excel-help/HP010335656.aspx)).

## Installation

Add this line to your application's Gemfile:

    gem 'percentrank'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install percentrank

## Usage

```ruby
require 'percentrank'

([125, 150, 160, 90]).percentrank(125)  #=> 0.33.
([12 , 13, 14, 10]).percentrank(14)  #=> 1 .
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
