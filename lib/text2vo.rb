# frozen_string_literal: true

require_relative "text2vo/version"
require_relative "text2vo/voiceover"

module Text2vo
  def self.send(text)
    script = <<-APPLESCRIPT
    tell application "VoiceOver"
      output "#{text}"
    end tell
    APPLESCRIPT
    VoiceOver.system("osascript -e '#{script}'")
  end
end

class String
  def say_it
    Text2vo.send(self)
  end
end
