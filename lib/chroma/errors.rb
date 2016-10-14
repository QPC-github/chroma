module Chroma
  class Error < StandardError; end
  class PaletteDefinedError < Error; end
  class UnrecognizedColor < Error; end
end
