require_relative 'constants'

module Unicode
  module NumericValue
    INDEX = Marshal.load(Gem.gunzip(File.binread(INDEX_FILENAME)))
  end
end
