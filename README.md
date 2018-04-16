# Textlocal

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/textlocal`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'textlocal'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install textlocal

## Usage

Register on https://www.textlocal.in and get user details, set them in your ENV VARS

      localtext_user  = ENV['TEXTLOCAL_USER']

      api_hash        = ENV['API_HASH']

      sender          = ENV['SENDER']


      To Send SMS Add textlocal gem in your Gemfile

      gem 'textlocal', git: "https://github.com/shyammohankanojia/textlocal.git", branch: :master

      Add call following method to send sms

      Textlocal::Sms.send("your message text goes here", "your mobile numbers")

      Ex: Textlocal::Sms.send("123456 is your mobile verification OTP.", "8688468400")


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/textlocal.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
