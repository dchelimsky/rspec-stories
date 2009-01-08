module Spec
  module Story
    module VERSION
      unless defined? MAJOR
        MAJOR  = 0
        MINOR  = 9
        TINY   = 0
        MINESCULE = 0


        STRING = [MAJOR, MINOR, TINY, MINESCULE].join('.')

        SUMMARY = "rspec-stories #{STRING}"
      end
    end
  end
end