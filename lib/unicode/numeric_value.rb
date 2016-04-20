require_relative "numeric_value/constants"

module Unicode
  module NumericValue
    def self.numeric_value(char)
      codepoint = char.unpack("U")[0] or
          raise(ArgumentError, "Unicode::NumericValue.numeric_value must be given a valid char")
      require_relative "numeric_value/index" unless defined? ::Unicode::NumericValue::INDEX
      INDEX[codepoint]
    end
    class << self; alias of numeric_value; end

    def self.chars
      require_relative "numeric_value/index" unless defined? ::Unicode::NumericValue::INDEX
      INDEX.keys.sort.map{ |codepoint| [codepoint].pack("U") }
    end
  end
end

