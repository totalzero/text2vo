require "ffi"

module VoiceOver
  extend FFI::Library
  ffi_lib "Carbon.framework/Carbon"

  attach_function :system, [:string], :int
end
