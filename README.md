# Volt-wysiwyg

A thing wrapper for Quill.js for Volt.

## Installation

Add this line to your application's Gemfile:

    gem 'volt-wysiwyg'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install volt-wysiwyg

Now proceed to open `app/main/config/components.rb` and add:

```RUBY
component 'wysiwyg'
```

## Usage

To add an editor simple add the `<:wysiwyg />` tag. It can optionally be passed a default message.

`<:wysiwyg text='hello' />`

See the example application that is included for a direct example.

## Contributing

1. Fork it ( http://github.com/[my-github-username]/volt-wysiwyg/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
