[![Gem Version](https://badge.fury.io/rb/volt-wysiwyg.svg)](http://badge.fury.io/rb/volt-wysiwyg)
# Volt-wysiwyg

A thin wrapper for Quill.js for Volt.

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

To add an editor simple add the `<:wysiwyg />` tag. It can be passed a default message; if the message is a volt binding, it will sync the editor's HTML output and the binding, and volt can auto-sync the values to the database.

`<:wysiwyg text='hello' />`

See the example application that is included for a direct example including two-way binding to an input element outside the editor, and auto-saving the text to the server.

You can customize the fonts, text and background colors and toolbar by overriding template files in your local app, also demonstrated in the example with a customized list and order of fonts.  Additional with the customization with the Quill API is also possible, including multiple cursors with authorship attribution, which future enhancement should be able to integrate directly with the volt user model, for a mini-google-docs like editing experience for multiple users of your app.

## Contributing

1. Fork it ( http://github.com/[my-github-username]/volt-wysiwyg/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
