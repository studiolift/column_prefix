# Column Prefix

Extends ActiveResource with column prefix option. Column Prefix will then alias all columns with the same column name, minus the prefix.

Please note that if an unprefixed name would override an existing attribute or method it will not be aliased. However, you can still access the attribute via its prefixed version.

## Installation

Add this line to your application's Gemfile:

    gem 'column_prefix'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install column_prefix

## Usage

In your model, declare the `column\_prefix` you would like to alias. For the prefix "entry\_":

```ruby
class Entry < ActiveRecord::Base
  column_prefix "entry_"
end
```

You can then access attributes via their simpler name. For example, the column "entry\_title" can be accessed via `e.title` or `e.entry\_title` (where `e` is an instance of `Entry`).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
