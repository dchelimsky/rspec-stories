module Spec
  module Story
    module VERSION
      unless defined? MAJOR
        MAJOR  = 1
        MINOR  = 0
        TINY   = 0

        STRING = [MAJOR, MINOR, TINY].compact.join('.')

        SUMMARY = "rspec-stories #{STRING}"
      end
    end
  end
end