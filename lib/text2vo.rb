# frozen_string_literal: true

require_relative "text2vo/version"
require_relative "text2vo/voiceover"

# The Text2vo module provides functionality to convert text to voice
# using the VoiceOver application on macOS.
#
# @example
#   Text2vo.send("Hello, world!")
#
module Text2vo
    # Sends the given text to the VoiceOver application to be spoken aloud.
  #
  # @param text [String] The text that should be spoken.
  #
  # @return [void]
  #
  # @example
  #   Text2vo.send("This is a test.")
  #
  def self.send(text)
    script = <<-APPLESCRIPT
    tell application "VoiceOver"
      output "#{text}"
    end tell
    APPLESCRIPT
    VoiceOver.system("osascript -e '#{script}'")
  end
end

# This class extends the String class to add text-to-speech functionality.
class String
    # Invokes the Text2vo module's send method to speak the string's content.
  #
  # @return [void]
  #
  # @example
  #   "Hello, world!".say_it
  #
  def say_it
    Text2vo.send(self)
  end
end
