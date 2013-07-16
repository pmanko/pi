module Pi
  module VERSION #:nodoc:
    MAJOR = 0
    MINOR = 0
    TINY = 0
    BUILD = "pre"
    STRING = [MAJOR, MINOR, TINY, BUILD].compact.join('.')
  end
end