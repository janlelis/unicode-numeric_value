require_relative "../numeric_value"

class String
  # Optional string extension for your convenience
  def numeric_value
    Unicode::NumericValue.of(self)
  end
end
