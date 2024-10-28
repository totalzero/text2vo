#frozen_string_literal: true
require "ffi"

# VoiceOver
#
# This module provides an interface to the macOS Carbon framework
# to call system functions, including executing AppleScript commands.
#
# It utilizes the FFI (Foreign Function Interface) to interact with
# external system libraries, allowing the execution of system commands
# from Ruby.
#
# Example usage:
#
#   require "text2vo"
#   VoiceOver.system("osascript -e 'display dialog \"Hello, World!\"'")
#
# This example will show a dialog box with the message "Hello, World!".
#
module VoiceOver
  extend FFI::Library
  ffi_lib "Carbon.framework/Carbon"

    # Calls a system function from the Carbon framework.
  #
  # This function can be used to execute AppleScript commands or
  # other system calls.
  #
  # @param command [String] The command to be executed.
  # @return [Integer] The return code from the system call.
  attach_function :system, [:string], :int
end
