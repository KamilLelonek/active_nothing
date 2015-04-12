# ActiveNothing

A ruby gem inspired by [a talk from Sandi Metz](https://youtu.be/9lv2lBq6x4A) and [Yehuda Katz blogpost](http://yehudakatz.com/2009/10/04/emulating-smalltalks-conditionals-in-ruby/) for better flow of conditions.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'active_nothing'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install active_nothing

## Usage

After doing:

    require 'active_nothing'

You now have an access to inverse conditional flow like:

    [true, false, nil, Object, 0, 1, "", [1, 2, 3], {}].each do |value|
      value
        .if_true  { p "#{value} is truthy" }
        .if_false { p "#{value} is falsey" }
    end

You can use it as you wish.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/active_nothing/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
