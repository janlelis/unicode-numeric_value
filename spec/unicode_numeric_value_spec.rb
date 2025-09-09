require_relative "../lib/unicode/numeric_value"
require "minitest/autorun"

describe Unicode::NumericValue do
  describe ".numeric_value (alias .of)" do
    it "will return integers values" do
      assert_equal 1, Unicode::NumericValue.of("1")
      assert_equal 8, Unicode::NumericValue.of("Ⅷ")
      assert_equal 19, Unicode::NumericValue.of("⓳")
      assert_equal 1000000000000, Unicode::NumericValue.of("𖭡")
    end

    it "works with numbers from Unicode 17 (2025)" do
      assert_equal 1, Unicode::NumericValue.of("𑷡")
    end

    it "works with numbers from Unicode 16 (2024)" do
      assert_equal 7, Unicode::NumericValue.of("𜳷")
    end

    it "will return rational values" do
      assert_equal  3/4r, Unicode::NumericValue.of("¾")
      assert_equal -1/2r, Unicode::NumericValue.of("༳")
    end

    it "will return nil if no numeric value associated" do
      assert_nil Unicode::NumericValue.of("A")
      assert_nil Unicode::NumericValue.of("\0")
    end

    it "works with numbers from recent Unicode versions" do
      assert_equal 0, Unicode::NumericValue.of("𝋀") # Unicode 15.0
    end
  end

  describe ".chars" do
    it "will return all characters that have an numerical value" do
      assert_equal true, Unicode::NumericValue.chars.include?("⑸")
    end
  end
end

