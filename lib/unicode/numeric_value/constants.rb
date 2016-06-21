module Unicode
  module NumericValue
    VERSION = "1.2.0".freeze
    UNICODE_VERSION = "9.0.0".freeze
    DATA_DIRECTORY = File.expand_path(File.dirname(__FILE__) + '/../../../data/').freeze
    INDEX_FILENAME = (DATA_DIRECTORY + '/numeric_value.marshal.gz').freeze
  end
end

