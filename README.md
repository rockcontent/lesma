# Slugify

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'slugify'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install slugify

## Usage

```ruby
# Original phrase
phrase = "([{My Custom ~Phrase}])"

# Calls Slugify
slug = Slugify[phrase] # result -> "mycustomphrase"

# Calls Slugify with separator given
slug_with_separator = Slugify[phrase, "-"] # result -> "---my-custom--phrase---"
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
