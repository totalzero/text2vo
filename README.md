# Text2vo

Text2vo is a Ruby gem that allows you to convert text to speech using the VoiceOver application on macOS. It provides a simple interface to send text and have it spoken aloud.

## Installation

You can install the gem by adding it to your Gemfile:

```ruby
gem 'text2vo'
```

And then running:

```bash
bundle install
```

Or you can install it directly using:

```bash
gem install text2vo
```

If you are working on the gem locally, you can build and install it like this:

```bash
gem build text2vo.gemspec
gem install text2vo-0.1.0.gem
```

## Usage

### Sending Text to VoiceOver

To send text to the VoiceOver application, use the `Text2vo.send` method:

```ruby
require 'text2vo'

Text2vo.send("Hello, world!")
```

### Extending String Class

You can also extend the `String` class to easily convert strings to speech:

```ruby
require 'text2vo'

"Hello, world!".say_it
```

This will call the `say_it` method on the string and send it to the VoiceOver application.

## Requirements

- macOS (as it uses the VoiceOver application)
- Ruby (2.0 or higher)

## Contributing

Contributions are welcome! If you have suggestions or improvements, please open an issue or submit a pull request.

1. Fork the repository.
2. Create a feature branch (`git checkout -b feature/YourFeature`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/YourFeature`).
5. Open a pull request.

## License

This gem is available as open-source under the MIT License.
