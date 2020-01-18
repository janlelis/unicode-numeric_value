# Unicode::NumericValue [![[version]](https://badge.fury.io/rb/unicode-numeric_value.svg)](https://badge.fury.io/rb/unicode-numeric_value)  [![[travis]](https://travis-ci.org/janlelis/unicode-numeric_value.png)](https://travis-ci.org/janlelis/unicode-numeric_value)

Convert a Unicode character into its numeric value.

Unicode version: **12.1.0** (May 2019)

Supported Rubies: **2.6**, **2.5**, **2.4**

Old Rubies that might still work: **2.3**, **2.2**, **2.1**, **2.0**

## Gemfile

```ruby
gem "unicode-numeric_value"
```

## Usage

Can return Integer, Rational or nil:

```ruby
require "unicode/numeric_value"

Unicode::NumericValue.of("1") # => 1
Unicode::NumericValue.of("Ⅷ") # => 8
Unicode::NumericValue.of("⓳") # => 19
Unicode::NumericValue.of("¾") # => (3/4)
Unicode::NumericValue.of("༳") # => (-1/2)
Unicode::NumericValue.of("𑿀") # => (1/320)
Unicode::NumericValue.of("𖭡") # => 1000000000000
Unicode::NumericValue.of("五") # => 5
Unicode::NumericValue.of("A") # => nil
```

# All Numeric Values

Also available at: [character.construction/numbers](https://character.construction/numbers)

Generated with:

```ruby
require "unicode/numeric_value"
require "unicode/name" # https://github.com/janlelis/unicode-name

puts "Codepoint | Character | Numeric Value | Name\n" \
     "----------|-----------|---------------|-----\n" +
    Unicode::NumericValue.chars.map{ |char|
      [
        format("U+%.4X", char.unpack("U")[0]).rjust(9),
        char.rjust(9),
        Unicode::NumericValue.of(char).inspect.rjust(13),
        Unicode::Name.of(char)
      ].join(" | ")
    }.join("\n")
```

Codepoint | Character | Numeric Value | Name
----------|-----------|---------------|-----
   U+0030 |         0 |             0 | DIGIT ZERO
   U+0031 |         1 |             1 | DIGIT ONE
   U+0032 |         2 |             2 | DIGIT TWO
   U+0033 |         3 |             3 | DIGIT THREE
   U+0034 |         4 |             4 | DIGIT FOUR
   U+0035 |         5 |             5 | DIGIT FIVE
   U+0036 |         6 |             6 | DIGIT SIX
   U+0037 |         7 |             7 | DIGIT SEVEN
   U+0038 |         8 |             8 | DIGIT EIGHT
   U+0039 |         9 |             9 | DIGIT NINE
   U+00B2 |         ² |             2 | SUPERSCRIPT TWO
   U+00B3 |         ³ |             3 | SUPERSCRIPT THREE
   U+00B9 |         ¹ |             1 | SUPERSCRIPT ONE
   U+00BC |         ¼ |         (1/4) | VULGAR FRACTION ONE QUARTER
   U+00BD |         ½ |         (1/2) | VULGAR FRACTION ONE HALF
   U+00BE |         ¾ |         (3/4) | VULGAR FRACTION THREE QUARTERS
   U+0660 |         ٠ |             0 | ARABIC-INDIC DIGIT ZERO
   U+0661 |         ١ |             1 | ARABIC-INDIC DIGIT ONE
   U+0662 |         ٢ |             2 | ARABIC-INDIC DIGIT TWO
   U+0663 |         ٣ |             3 | ARABIC-INDIC DIGIT THREE
   U+0664 |         ٤ |             4 | ARABIC-INDIC DIGIT FOUR
   U+0665 |         ٥ |             5 | ARABIC-INDIC DIGIT FIVE
   U+0666 |         ٦ |             6 | ARABIC-INDIC DIGIT SIX
   U+0667 |         ٧ |             7 | ARABIC-INDIC DIGIT SEVEN
   U+0668 |         ٨ |             8 | ARABIC-INDIC DIGIT EIGHT
   U+0669 |         ٩ |             9 | ARABIC-INDIC DIGIT NINE
   U+06F0 |         ۰ |             0 | EXTENDED ARABIC-INDIC DIGIT ZERO
   U+06F1 |         ۱ |             1 | EXTENDED ARABIC-INDIC DIGIT ONE
   U+06F2 |         ۲ |             2 | EXTENDED ARABIC-INDIC DIGIT TWO
   U+06F3 |         ۳ |             3 | EXTENDED ARABIC-INDIC DIGIT THREE
   U+06F4 |         ۴ |             4 | EXTENDED ARABIC-INDIC DIGIT FOUR
   U+06F5 |         ۵ |             5 | EXTENDED ARABIC-INDIC DIGIT FIVE
   U+06F6 |         ۶ |             6 | EXTENDED ARABIC-INDIC DIGIT SIX
   U+06F7 |         ۷ |             7 | EXTENDED ARABIC-INDIC DIGIT SEVEN
   U+06F8 |         ۸ |             8 | EXTENDED ARABIC-INDIC DIGIT EIGHT
   U+06F9 |         ۹ |             9 | EXTENDED ARABIC-INDIC DIGIT NINE
   U+07C0 |         ߀ |             0 | NKO DIGIT ZERO
   U+07C1 |         ߁ |             1 | NKO DIGIT ONE
   U+07C2 |         ߂ |             2 | NKO DIGIT TWO
   U+07C3 |         ߃ |             3 | NKO DIGIT THREE
   U+07C4 |         ߄ |             4 | NKO DIGIT FOUR
   U+07C5 |         ߅ |             5 | NKO DIGIT FIVE
   U+07C6 |         ߆ |             6 | NKO DIGIT SIX
   U+07C7 |         ߇ |             7 | NKO DIGIT SEVEN
   U+07C8 |         ߈ |             8 | NKO DIGIT EIGHT
   U+07C9 |         ߉ |             9 | NKO DIGIT NINE
   U+0966 |         ० |             0 | DEVANAGARI DIGIT ZERO
   U+0967 |         १ |             1 | DEVANAGARI DIGIT ONE
   U+0968 |         २ |             2 | DEVANAGARI DIGIT TWO
   U+0969 |         ३ |             3 | DEVANAGARI DIGIT THREE
   U+096A |         ४ |             4 | DEVANAGARI DIGIT FOUR
   U+096B |         ५ |             5 | DEVANAGARI DIGIT FIVE
   U+096C |         ६ |             6 | DEVANAGARI DIGIT SIX
   U+096D |         ७ |             7 | DEVANAGARI DIGIT SEVEN
   U+096E |         ८ |             8 | DEVANAGARI DIGIT EIGHT
   U+096F |         ९ |             9 | DEVANAGARI DIGIT NINE
   U+09E6 |         ০ |             0 | BENGALI DIGIT ZERO
   U+09E7 |         ১ |             1 | BENGALI DIGIT ONE
   U+09E8 |         ২ |             2 | BENGALI DIGIT TWO
   U+09E9 |         ৩ |             3 | BENGALI DIGIT THREE
   U+09EA |         ৪ |             4 | BENGALI DIGIT FOUR
   U+09EB |         ৫ |             5 | BENGALI DIGIT FIVE
   U+09EC |         ৬ |             6 | BENGALI DIGIT SIX
   U+09ED |         ৭ |             7 | BENGALI DIGIT SEVEN
   U+09EE |         ৮ |             8 | BENGALI DIGIT EIGHT
   U+09EF |         ৯ |             9 | BENGALI DIGIT NINE
   U+09F4 |         ৴ |        (1/16) | BENGALI CURRENCY NUMERATOR ONE
   U+09F5 |         ৵ |         (1/8) | BENGALI CURRENCY NUMERATOR TWO
   U+09F6 |         ৶ |        (3/16) | BENGALI CURRENCY NUMERATOR THREE
   U+09F7 |         ৷ |         (1/4) | BENGALI CURRENCY NUMERATOR FOUR
   U+09F8 |         ৸ |         (3/4) | BENGALI CURRENCY NUMERATOR ONE LESS THAN THE DENOMINATOR
   U+09F9 |         ৹ |            16 | BENGALI CURRENCY DENOMINATOR SIXTEEN
   U+0A66 |         ੦ |             0 | GURMUKHI DIGIT ZERO
   U+0A67 |         ੧ |             1 | GURMUKHI DIGIT ONE
   U+0A68 |         ੨ |             2 | GURMUKHI DIGIT TWO
   U+0A69 |         ੩ |             3 | GURMUKHI DIGIT THREE
   U+0A6A |         ੪ |             4 | GURMUKHI DIGIT FOUR
   U+0A6B |         ੫ |             5 | GURMUKHI DIGIT FIVE
   U+0A6C |         ੬ |             6 | GURMUKHI DIGIT SIX
   U+0A6D |         ੭ |             7 | GURMUKHI DIGIT SEVEN
   U+0A6E |         ੮ |             8 | GURMUKHI DIGIT EIGHT
   U+0A6F |         ੯ |             9 | GURMUKHI DIGIT NINE
   U+0AE6 |         ૦ |             0 | GUJARATI DIGIT ZERO
   U+0AE7 |         ૧ |             1 | GUJARATI DIGIT ONE
   U+0AE8 |         ૨ |             2 | GUJARATI DIGIT TWO
   U+0AE9 |         ૩ |             3 | GUJARATI DIGIT THREE
   U+0AEA |         ૪ |             4 | GUJARATI DIGIT FOUR
   U+0AEB |         ૫ |             5 | GUJARATI DIGIT FIVE
   U+0AEC |         ૬ |             6 | GUJARATI DIGIT SIX
   U+0AED |         ૭ |             7 | GUJARATI DIGIT SEVEN
   U+0AEE |         ૮ |             8 | GUJARATI DIGIT EIGHT
   U+0AEF |         ૯ |             9 | GUJARATI DIGIT NINE
   U+0B66 |         ୦ |             0 | ORIYA DIGIT ZERO
   U+0B67 |         ୧ |             1 | ORIYA DIGIT ONE
   U+0B68 |         ୨ |             2 | ORIYA DIGIT TWO
   U+0B69 |         ୩ |             3 | ORIYA DIGIT THREE
   U+0B6A |         ୪ |             4 | ORIYA DIGIT FOUR
   U+0B6B |         ୫ |             5 | ORIYA DIGIT FIVE
   U+0B6C |         ୬ |             6 | ORIYA DIGIT SIX
   U+0B6D |         ୭ |             7 | ORIYA DIGIT SEVEN
   U+0B6E |         ୮ |             8 | ORIYA DIGIT EIGHT
   U+0B6F |         ୯ |             9 | ORIYA DIGIT NINE
   U+0B72 |         ୲ |         (1/4) | ORIYA FRACTION ONE QUARTER
   U+0B73 |         ୳ |         (1/2) | ORIYA FRACTION ONE HALF
   U+0B74 |         ୴ |         (3/4) | ORIYA FRACTION THREE QUARTERS
   U+0B75 |         ୵ |        (1/16) | ORIYA FRACTION ONE SIXTEENTH
   U+0B76 |         ୶ |         (1/8) | ORIYA FRACTION ONE EIGHTH
   U+0B77 |         ୷ |        (3/16) | ORIYA FRACTION THREE SIXTEENTHS
   U+0BE6 |         ௦ |             0 | TAMIL DIGIT ZERO
   U+0BE7 |         ௧ |             1 | TAMIL DIGIT ONE
   U+0BE8 |         ௨ |             2 | TAMIL DIGIT TWO
   U+0BE9 |         ௩ |             3 | TAMIL DIGIT THREE
   U+0BEA |         ௪ |             4 | TAMIL DIGIT FOUR
   U+0BEB |         ௫ |             5 | TAMIL DIGIT FIVE
   U+0BEC |         ௬ |             6 | TAMIL DIGIT SIX
   U+0BED |         ௭ |             7 | TAMIL DIGIT SEVEN
   U+0BEE |         ௮ |             8 | TAMIL DIGIT EIGHT
   U+0BEF |         ௯ |             9 | TAMIL DIGIT NINE
   U+0BF0 |         ௰ |            10 | TAMIL NUMBER TEN
   U+0BF1 |         ௱ |           100 | TAMIL NUMBER ONE HUNDRED
   U+0BF2 |         ௲ |          1000 | TAMIL NUMBER ONE THOUSAND
   U+0C66 |         ౦ |             0 | TELUGU DIGIT ZERO
   U+0C67 |         ౧ |             1 | TELUGU DIGIT ONE
   U+0C68 |         ౨ |             2 | TELUGU DIGIT TWO
   U+0C69 |         ౩ |             3 | TELUGU DIGIT THREE
   U+0C6A |         ౪ |             4 | TELUGU DIGIT FOUR
   U+0C6B |         ౫ |             5 | TELUGU DIGIT FIVE
   U+0C6C |         ౬ |             6 | TELUGU DIGIT SIX
   U+0C6D |         ౭ |             7 | TELUGU DIGIT SEVEN
   U+0C6E |         ౮ |             8 | TELUGU DIGIT EIGHT
   U+0C6F |         ౯ |             9 | TELUGU DIGIT NINE
   U+0C78 |         ౸ |             0 | TELUGU FRACTION DIGIT ZERO FOR ODD POWERS OF FOUR
   U+0C79 |         ౹ |             1 | TELUGU FRACTION DIGIT ONE FOR ODD POWERS OF FOUR
   U+0C7A |         ౺ |             2 | TELUGU FRACTION DIGIT TWO FOR ODD POWERS OF FOUR
   U+0C7B |         ౻ |             3 | TELUGU FRACTION DIGIT THREE FOR ODD POWERS OF FOUR
   U+0C7C |         ౼ |             1 | TELUGU FRACTION DIGIT ONE FOR EVEN POWERS OF FOUR
   U+0C7D |         ౽ |             2 | TELUGU FRACTION DIGIT TWO FOR EVEN POWERS OF FOUR
   U+0C7E |         ౾ |             3 | TELUGU FRACTION DIGIT THREE FOR EVEN POWERS OF FOUR
   U+0CE6 |         ೦ |             0 | KANNADA DIGIT ZERO
   U+0CE7 |         ೧ |             1 | KANNADA DIGIT ONE
   U+0CE8 |         ೨ |             2 | KANNADA DIGIT TWO
   U+0CE9 |         ೩ |             3 | KANNADA DIGIT THREE
   U+0CEA |         ೪ |             4 | KANNADA DIGIT FOUR
   U+0CEB |         ೫ |             5 | KANNADA DIGIT FIVE
   U+0CEC |         ೬ |             6 | KANNADA DIGIT SIX
   U+0CED |         ೭ |             7 | KANNADA DIGIT SEVEN
   U+0CEE |         ೮ |             8 | KANNADA DIGIT EIGHT
   U+0CEF |         ೯ |             9 | KANNADA DIGIT NINE
   U+0D58 |         ൘ |       (1/160) | MALAYALAM FRACTION ONE ONE-HUNDRED-AND-SIXTIETH
   U+0D59 |         ൙ |        (1/40) | MALAYALAM FRACTION ONE FORTIETH
   U+0D5A |         ൚ |        (3/80) | MALAYALAM FRACTION THREE EIGHTIETHS
   U+0D5B |         ൛ |        (1/20) | MALAYALAM FRACTION ONE TWENTIETH
   U+0D5C |         ൜ |        (1/10) | MALAYALAM FRACTION ONE TENTH
   U+0D5D |         ൝ |        (3/20) | MALAYALAM FRACTION THREE TWENTIETHS
   U+0D5E |         ൞ |         (1/5) | MALAYALAM FRACTION ONE FIFTH
   U+0D66 |         ൦ |             0 | MALAYALAM DIGIT ZERO
   U+0D67 |         ൧ |             1 | MALAYALAM DIGIT ONE
   U+0D68 |         ൨ |             2 | MALAYALAM DIGIT TWO
   U+0D69 |         ൩ |             3 | MALAYALAM DIGIT THREE
   U+0D6A |         ൪ |             4 | MALAYALAM DIGIT FOUR
   U+0D6B |         ൫ |             5 | MALAYALAM DIGIT FIVE
   U+0D6C |         ൬ |             6 | MALAYALAM DIGIT SIX
   U+0D6D |         ൭ |             7 | MALAYALAM DIGIT SEVEN
   U+0D6E |         ൮ |             8 | MALAYALAM DIGIT EIGHT
   U+0D6F |         ൯ |             9 | MALAYALAM DIGIT NINE
   U+0D70 |         ൰ |            10 | MALAYALAM NUMBER TEN
   U+0D71 |         ൱ |           100 | MALAYALAM NUMBER ONE HUNDRED
   U+0D72 |         ൲ |          1000 | MALAYALAM NUMBER ONE THOUSAND
   U+0D73 |         ൳ |         (1/4) | MALAYALAM FRACTION ONE QUARTER
   U+0D74 |         ൴ |         (1/2) | MALAYALAM FRACTION ONE HALF
   U+0D75 |         ൵ |         (3/4) | MALAYALAM FRACTION THREE QUARTERS
   U+0D76 |         ൶ |        (1/16) | MALAYALAM FRACTION ONE SIXTEENTH
   U+0D77 |         ൷ |         (1/8) | MALAYALAM FRACTION ONE EIGHTH
   U+0D78 |         ൸ |        (3/16) | MALAYALAM FRACTION THREE SIXTEENTHS
   U+0DE6 |         ෦ |             0 | SINHALA LITH DIGIT ZERO
   U+0DE7 |         ෧ |             1 | SINHALA LITH DIGIT ONE
   U+0DE8 |         ෨ |             2 | SINHALA LITH DIGIT TWO
   U+0DE9 |         ෩ |             3 | SINHALA LITH DIGIT THREE
   U+0DEA |         ෪ |             4 | SINHALA LITH DIGIT FOUR
   U+0DEB |         ෫ |             5 | SINHALA LITH DIGIT FIVE
   U+0DEC |         ෬ |             6 | SINHALA LITH DIGIT SIX
   U+0DED |         ෭ |             7 | SINHALA LITH DIGIT SEVEN
   U+0DEE |         ෮ |             8 | SINHALA LITH DIGIT EIGHT
   U+0DEF |         ෯ |             9 | SINHALA LITH DIGIT NINE
   U+0E50 |         ๐ |             0 | THAI DIGIT ZERO
   U+0E51 |         ๑ |             1 | THAI DIGIT ONE
   U+0E52 |         ๒ |             2 | THAI DIGIT TWO
   U+0E53 |         ๓ |             3 | THAI DIGIT THREE
   U+0E54 |         ๔ |             4 | THAI DIGIT FOUR
   U+0E55 |         ๕ |             5 | THAI DIGIT FIVE
   U+0E56 |         ๖ |             6 | THAI DIGIT SIX
   U+0E57 |         ๗ |             7 | THAI DIGIT SEVEN
   U+0E58 |         ๘ |             8 | THAI DIGIT EIGHT
   U+0E59 |         ๙ |             9 | THAI DIGIT NINE
   U+0ED0 |         ໐ |             0 | LAO DIGIT ZERO
   U+0ED1 |         ໑ |             1 | LAO DIGIT ONE
   U+0ED2 |         ໒ |             2 | LAO DIGIT TWO
   U+0ED3 |         ໓ |             3 | LAO DIGIT THREE
   U+0ED4 |         ໔ |             4 | LAO DIGIT FOUR
   U+0ED5 |         ໕ |             5 | LAO DIGIT FIVE
   U+0ED6 |         ໖ |             6 | LAO DIGIT SIX
   U+0ED7 |         ໗ |             7 | LAO DIGIT SEVEN
   U+0ED8 |         ໘ |             8 | LAO DIGIT EIGHT
   U+0ED9 |         ໙ |             9 | LAO DIGIT NINE
   U+0F20 |         ༠ |             0 | TIBETAN DIGIT ZERO
   U+0F21 |         ༡ |             1 | TIBETAN DIGIT ONE
   U+0F22 |         ༢ |             2 | TIBETAN DIGIT TWO
   U+0F23 |         ༣ |             3 | TIBETAN DIGIT THREE
   U+0F24 |         ༤ |             4 | TIBETAN DIGIT FOUR
   U+0F25 |         ༥ |             5 | TIBETAN DIGIT FIVE
   U+0F26 |         ༦ |             6 | TIBETAN DIGIT SIX
   U+0F27 |         ༧ |             7 | TIBETAN DIGIT SEVEN
   U+0F28 |         ༨ |             8 | TIBETAN DIGIT EIGHT
   U+0F29 |         ༩ |             9 | TIBETAN DIGIT NINE
   U+0F2A |         ༪ |         (1/2) | TIBETAN DIGIT HALF ONE
   U+0F2B |         ༫ |         (3/2) | TIBETAN DIGIT HALF TWO
   U+0F2C |         ༬ |         (5/2) | TIBETAN DIGIT HALF THREE
   U+0F2D |         ༭ |         (7/2) | TIBETAN DIGIT HALF FOUR
   U+0F2E |         ༮ |         (9/2) | TIBETAN DIGIT HALF FIVE
   U+0F2F |         ༯ |        (11/2) | TIBETAN DIGIT HALF SIX
   U+0F30 |         ༰ |        (13/2) | TIBETAN DIGIT HALF SEVEN
   U+0F31 |         ༱ |        (15/2) | TIBETAN DIGIT HALF EIGHT
   U+0F32 |         ༲ |        (17/2) | TIBETAN DIGIT HALF NINE
   U+0F33 |         ༳ |        (-1/2) | TIBETAN DIGIT HALF ZERO
   U+1040 |         ၀ |             0 | MYANMAR DIGIT ZERO
   U+1041 |         ၁ |             1 | MYANMAR DIGIT ONE
   U+1042 |         ၂ |             2 | MYANMAR DIGIT TWO
   U+1043 |         ၃ |             3 | MYANMAR DIGIT THREE
   U+1044 |         ၄ |             4 | MYANMAR DIGIT FOUR
   U+1045 |         ၅ |             5 | MYANMAR DIGIT FIVE
   U+1046 |         ၆ |             6 | MYANMAR DIGIT SIX
   U+1047 |         ၇ |             7 | MYANMAR DIGIT SEVEN
   U+1048 |         ၈ |             8 | MYANMAR DIGIT EIGHT
   U+1049 |         ၉ |             9 | MYANMAR DIGIT NINE
   U+1090 |         ႐ |             0 | MYANMAR SHAN DIGIT ZERO
   U+1091 |         ႑ |             1 | MYANMAR SHAN DIGIT ONE
   U+1092 |         ႒ |             2 | MYANMAR SHAN DIGIT TWO
   U+1093 |         ႓ |             3 | MYANMAR SHAN DIGIT THREE
   U+1094 |         ႔ |             4 | MYANMAR SHAN DIGIT FOUR
   U+1095 |         ႕ |             5 | MYANMAR SHAN DIGIT FIVE
   U+1096 |         ႖ |             6 | MYANMAR SHAN DIGIT SIX
   U+1097 |         ႗ |             7 | MYANMAR SHAN DIGIT SEVEN
   U+1098 |         ႘ |             8 | MYANMAR SHAN DIGIT EIGHT
   U+1099 |         ႙ |             9 | MYANMAR SHAN DIGIT NINE
   U+1369 |         ፩ |             1 | ETHIOPIC DIGIT ONE
   U+136A |         ፪ |             2 | ETHIOPIC DIGIT TWO
   U+136B |         ፫ |             3 | ETHIOPIC DIGIT THREE
   U+136C |         ፬ |             4 | ETHIOPIC DIGIT FOUR
   U+136D |         ፭ |             5 | ETHIOPIC DIGIT FIVE
   U+136E |         ፮ |             6 | ETHIOPIC DIGIT SIX
   U+136F |         ፯ |             7 | ETHIOPIC DIGIT SEVEN
   U+1370 |         ፰ |             8 | ETHIOPIC DIGIT EIGHT
   U+1371 |         ፱ |             9 | ETHIOPIC DIGIT NINE
   U+1372 |         ፲ |            10 | ETHIOPIC NUMBER TEN
   U+1373 |         ፳ |            20 | ETHIOPIC NUMBER TWENTY
   U+1374 |         ፴ |            30 | ETHIOPIC NUMBER THIRTY
   U+1375 |         ፵ |            40 | ETHIOPIC NUMBER FORTY
   U+1376 |         ፶ |            50 | ETHIOPIC NUMBER FIFTY
   U+1377 |         ፷ |            60 | ETHIOPIC NUMBER SIXTY
   U+1378 |         ፸ |            70 | ETHIOPIC NUMBER SEVENTY
   U+1379 |         ፹ |            80 | ETHIOPIC NUMBER EIGHTY
   U+137A |         ፺ |            90 | ETHIOPIC NUMBER NINETY
   U+137B |         ፻ |           100 | ETHIOPIC NUMBER HUNDRED
   U+137C |         ፼ |         10000 | ETHIOPIC NUMBER TEN THOUSAND
   U+16EE |         ᛮ |            17 | RUNIC ARLAUG SYMBOL
   U+16EF |         ᛯ |            18 | RUNIC TVIMADUR SYMBOL
   U+16F0 |         ᛰ |            19 | RUNIC BELGTHOR SYMBOL
   U+17E0 |         ០ |             0 | KHMER DIGIT ZERO
   U+17E1 |         ១ |             1 | KHMER DIGIT ONE
   U+17E2 |         ២ |             2 | KHMER DIGIT TWO
   U+17E3 |         ៣ |             3 | KHMER DIGIT THREE
   U+17E4 |         ៤ |             4 | KHMER DIGIT FOUR
   U+17E5 |         ៥ |             5 | KHMER DIGIT FIVE
   U+17E6 |         ៦ |             6 | KHMER DIGIT SIX
   U+17E7 |         ៧ |             7 | KHMER DIGIT SEVEN
   U+17E8 |         ៨ |             8 | KHMER DIGIT EIGHT
   U+17E9 |         ៩ |             9 | KHMER DIGIT NINE
   U+17F0 |         ៰ |             0 | KHMER SYMBOL LEK ATTAK SON
   U+17F1 |         ៱ |             1 | KHMER SYMBOL LEK ATTAK MUOY
   U+17F2 |         ៲ |             2 | KHMER SYMBOL LEK ATTAK PII
   U+17F3 |         ៳ |             3 | KHMER SYMBOL LEK ATTAK BEI
   U+17F4 |         ៴ |             4 | KHMER SYMBOL LEK ATTAK BUON
   U+17F5 |         ៵ |             5 | KHMER SYMBOL LEK ATTAK PRAM
   U+17F6 |         ៶ |             6 | KHMER SYMBOL LEK ATTAK PRAM-MUOY
   U+17F7 |         ៷ |             7 | KHMER SYMBOL LEK ATTAK PRAM-PII
   U+17F8 |         ៸ |             8 | KHMER SYMBOL LEK ATTAK PRAM-BEI
   U+17F9 |         ៹ |             9 | KHMER SYMBOL LEK ATTAK PRAM-BUON
   U+1810 |         ᠐ |             0 | MONGOLIAN DIGIT ZERO
   U+1811 |         ᠑ |             1 | MONGOLIAN DIGIT ONE
   U+1812 |         ᠒ |             2 | MONGOLIAN DIGIT TWO
   U+1813 |         ᠓ |             3 | MONGOLIAN DIGIT THREE
   U+1814 |         ᠔ |             4 | MONGOLIAN DIGIT FOUR
   U+1815 |         ᠕ |             5 | MONGOLIAN DIGIT FIVE
   U+1816 |         ᠖ |             6 | MONGOLIAN DIGIT SIX
   U+1817 |         ᠗ |             7 | MONGOLIAN DIGIT SEVEN
   U+1818 |         ᠘ |             8 | MONGOLIAN DIGIT EIGHT
   U+1819 |         ᠙ |             9 | MONGOLIAN DIGIT NINE
   U+1946 |         ᥆ |             0 | LIMBU DIGIT ZERO
   U+1947 |         ᥇ |             1 | LIMBU DIGIT ONE
   U+1948 |         ᥈ |             2 | LIMBU DIGIT TWO
   U+1949 |         ᥉ |             3 | LIMBU DIGIT THREE
   U+194A |         ᥊ |             4 | LIMBU DIGIT FOUR
   U+194B |         ᥋ |             5 | LIMBU DIGIT FIVE
   U+194C |         ᥌ |             6 | LIMBU DIGIT SIX
   U+194D |         ᥍ |             7 | LIMBU DIGIT SEVEN
   U+194E |         ᥎ |             8 | LIMBU DIGIT EIGHT
   U+194F |         ᥏ |             9 | LIMBU DIGIT NINE
   U+19D0 |         ᧐ |             0 | NEW TAI LUE DIGIT ZERO
   U+19D1 |         ᧑ |             1 | NEW TAI LUE DIGIT ONE
   U+19D2 |         ᧒ |             2 | NEW TAI LUE DIGIT TWO
   U+19D3 |         ᧓ |             3 | NEW TAI LUE DIGIT THREE
   U+19D4 |         ᧔ |             4 | NEW TAI LUE DIGIT FOUR
   U+19D5 |         ᧕ |             5 | NEW TAI LUE DIGIT FIVE
   U+19D6 |         ᧖ |             6 | NEW TAI LUE DIGIT SIX
   U+19D7 |         ᧗ |             7 | NEW TAI LUE DIGIT SEVEN
   U+19D8 |         ᧘ |             8 | NEW TAI LUE DIGIT EIGHT
   U+19D9 |         ᧙ |             9 | NEW TAI LUE DIGIT NINE
   U+19DA |         ᧚ |             1 | NEW TAI LUE THAM DIGIT ONE
   U+1A80 |         ᪀ |             0 | TAI THAM HORA DIGIT ZERO
   U+1A81 |         ᪁ |             1 | TAI THAM HORA DIGIT ONE
   U+1A82 |         ᪂ |             2 | TAI THAM HORA DIGIT TWO
   U+1A83 |         ᪃ |             3 | TAI THAM HORA DIGIT THREE
   U+1A84 |         ᪄ |             4 | TAI THAM HORA DIGIT FOUR
   U+1A85 |         ᪅ |             5 | TAI THAM HORA DIGIT FIVE
   U+1A86 |         ᪆ |             6 | TAI THAM HORA DIGIT SIX
   U+1A87 |         ᪇ |             7 | TAI THAM HORA DIGIT SEVEN
   U+1A88 |         ᪈ |             8 | TAI THAM HORA DIGIT EIGHT
   U+1A89 |         ᪉ |             9 | TAI THAM HORA DIGIT NINE
   U+1A90 |         ᪐ |             0 | TAI THAM THAM DIGIT ZERO
   U+1A91 |         ᪑ |             1 | TAI THAM THAM DIGIT ONE
   U+1A92 |         ᪒ |             2 | TAI THAM THAM DIGIT TWO
   U+1A93 |         ᪓ |             3 | TAI THAM THAM DIGIT THREE
   U+1A94 |         ᪔ |             4 | TAI THAM THAM DIGIT FOUR
   U+1A95 |         ᪕ |             5 | TAI THAM THAM DIGIT FIVE
   U+1A96 |         ᪖ |             6 | TAI THAM THAM DIGIT SIX
   U+1A97 |         ᪗ |             7 | TAI THAM THAM DIGIT SEVEN
   U+1A98 |         ᪘ |             8 | TAI THAM THAM DIGIT EIGHT
   U+1A99 |         ᪙ |             9 | TAI THAM THAM DIGIT NINE
   U+1B50 |         ᭐ |             0 | BALINESE DIGIT ZERO
   U+1B51 |         ᭑ |             1 | BALINESE DIGIT ONE
   U+1B52 |         ᭒ |             2 | BALINESE DIGIT TWO
   U+1B53 |         ᭓ |             3 | BALINESE DIGIT THREE
   U+1B54 |         ᭔ |             4 | BALINESE DIGIT FOUR
   U+1B55 |         ᭕ |             5 | BALINESE DIGIT FIVE
   U+1B56 |         ᭖ |             6 | BALINESE DIGIT SIX
   U+1B57 |         ᭗ |             7 | BALINESE DIGIT SEVEN
   U+1B58 |         ᭘ |             8 | BALINESE DIGIT EIGHT
   U+1B59 |         ᭙ |             9 | BALINESE DIGIT NINE
   U+1BB0 |         ᮰ |             0 | SUNDANESE DIGIT ZERO
   U+1BB1 |         ᮱ |             1 | SUNDANESE DIGIT ONE
   U+1BB2 |         ᮲ |             2 | SUNDANESE DIGIT TWO
   U+1BB3 |         ᮳ |             3 | SUNDANESE DIGIT THREE
   U+1BB4 |         ᮴ |             4 | SUNDANESE DIGIT FOUR
   U+1BB5 |         ᮵ |             5 | SUNDANESE DIGIT FIVE
   U+1BB6 |         ᮶ |             6 | SUNDANESE DIGIT SIX
   U+1BB7 |         ᮷ |             7 | SUNDANESE DIGIT SEVEN
   U+1BB8 |         ᮸ |             8 | SUNDANESE DIGIT EIGHT
   U+1BB9 |         ᮹ |             9 | SUNDANESE DIGIT NINE
   U+1C40 |         ᱀ |             0 | LEPCHA DIGIT ZERO
   U+1C41 |         ᱁ |             1 | LEPCHA DIGIT ONE
   U+1C42 |         ᱂ |             2 | LEPCHA DIGIT TWO
   U+1C43 |         ᱃ |             3 | LEPCHA DIGIT THREE
   U+1C44 |         ᱄ |             4 | LEPCHA DIGIT FOUR
   U+1C45 |         ᱅ |             5 | LEPCHA DIGIT FIVE
   U+1C46 |         ᱆ |             6 | LEPCHA DIGIT SIX
   U+1C47 |         ᱇ |             7 | LEPCHA DIGIT SEVEN
   U+1C48 |         ᱈ |             8 | LEPCHA DIGIT EIGHT
   U+1C49 |         ᱉ |             9 | LEPCHA DIGIT NINE
   U+1C50 |         ᱐ |             0 | OL CHIKI DIGIT ZERO
   U+1C51 |         ᱑ |             1 | OL CHIKI DIGIT ONE
   U+1C52 |         ᱒ |             2 | OL CHIKI DIGIT TWO
   U+1C53 |         ᱓ |             3 | OL CHIKI DIGIT THREE
   U+1C54 |         ᱔ |             4 | OL CHIKI DIGIT FOUR
   U+1C55 |         ᱕ |             5 | OL CHIKI DIGIT FIVE
   U+1C56 |         ᱖ |             6 | OL CHIKI DIGIT SIX
   U+1C57 |         ᱗ |             7 | OL CHIKI DIGIT SEVEN
   U+1C58 |         ᱘ |             8 | OL CHIKI DIGIT EIGHT
   U+1C59 |         ᱙ |             9 | OL CHIKI DIGIT NINE
   U+2070 |         ⁰ |             0 | SUPERSCRIPT ZERO
   U+2074 |         ⁴ |             4 | SUPERSCRIPT FOUR
   U+2075 |         ⁵ |             5 | SUPERSCRIPT FIVE
   U+2076 |         ⁶ |             6 | SUPERSCRIPT SIX
   U+2077 |         ⁷ |             7 | SUPERSCRIPT SEVEN
   U+2078 |         ⁸ |             8 | SUPERSCRIPT EIGHT
   U+2079 |         ⁹ |             9 | SUPERSCRIPT NINE
   U+2080 |         ₀ |             0 | SUBSCRIPT ZERO
   U+2081 |         ₁ |             1 | SUBSCRIPT ONE
   U+2082 |         ₂ |             2 | SUBSCRIPT TWO
   U+2083 |         ₃ |             3 | SUBSCRIPT THREE
   U+2084 |         ₄ |             4 | SUBSCRIPT FOUR
   U+2085 |         ₅ |             5 | SUBSCRIPT FIVE
   U+2086 |         ₆ |             6 | SUBSCRIPT SIX
   U+2087 |         ₇ |             7 | SUBSCRIPT SEVEN
   U+2088 |         ₈ |             8 | SUBSCRIPT EIGHT
   U+2089 |         ₉ |             9 | SUBSCRIPT NINE
   U+2150 |         ⅐ |         (1/7) | VULGAR FRACTION ONE SEVENTH
   U+2151 |         ⅑ |         (1/9) | VULGAR FRACTION ONE NINTH
   U+2152 |         ⅒ |        (1/10) | VULGAR FRACTION ONE TENTH
   U+2153 |         ⅓ |         (1/3) | VULGAR FRACTION ONE THIRD
   U+2154 |         ⅔ |         (2/3) | VULGAR FRACTION TWO THIRDS
   U+2155 |         ⅕ |         (1/5) | VULGAR FRACTION ONE FIFTH
   U+2156 |         ⅖ |         (2/5) | VULGAR FRACTION TWO FIFTHS
   U+2157 |         ⅗ |         (3/5) | VULGAR FRACTION THREE FIFTHS
   U+2158 |         ⅘ |         (4/5) | VULGAR FRACTION FOUR FIFTHS
   U+2159 |         ⅙ |         (1/6) | VULGAR FRACTION ONE SIXTH
   U+215A |         ⅚ |         (5/6) | VULGAR FRACTION FIVE SIXTHS
   U+215B |         ⅛ |         (1/8) | VULGAR FRACTION ONE EIGHTH
   U+215C |         ⅜ |         (3/8) | VULGAR FRACTION THREE EIGHTHS
   U+215D |         ⅝ |         (5/8) | VULGAR FRACTION FIVE EIGHTHS
   U+215E |         ⅞ |         (7/8) | VULGAR FRACTION SEVEN EIGHTHS
   U+215F |         ⅟ |             1 | FRACTION NUMERATOR ONE
   U+2160 |         Ⅰ |             1 | ROMAN NUMERAL ONE
   U+2161 |         Ⅱ |             2 | ROMAN NUMERAL TWO
   U+2162 |         Ⅲ |             3 | ROMAN NUMERAL THREE
   U+2163 |         Ⅳ |             4 | ROMAN NUMERAL FOUR
   U+2164 |         Ⅴ |             5 | ROMAN NUMERAL FIVE
   U+2165 |         Ⅵ |             6 | ROMAN NUMERAL SIX
   U+2166 |         Ⅶ |             7 | ROMAN NUMERAL SEVEN
   U+2167 |         Ⅷ |             8 | ROMAN NUMERAL EIGHT
   U+2168 |         Ⅸ |             9 | ROMAN NUMERAL NINE
   U+2169 |         Ⅹ |            10 | ROMAN NUMERAL TEN
   U+216A |         Ⅺ |            11 | ROMAN NUMERAL ELEVEN
   U+216B |         Ⅻ |            12 | ROMAN NUMERAL TWELVE
   U+216C |         Ⅼ |            50 | ROMAN NUMERAL FIFTY
   U+216D |         Ⅽ |           100 | ROMAN NUMERAL ONE HUNDRED
   U+216E |         Ⅾ |           500 | ROMAN NUMERAL FIVE HUNDRED
   U+216F |         Ⅿ |          1000 | ROMAN NUMERAL ONE THOUSAND
   U+2170 |         ⅰ |             1 | SMALL ROMAN NUMERAL ONE
   U+2171 |         ⅱ |             2 | SMALL ROMAN NUMERAL TWO
   U+2172 |         ⅲ |             3 | SMALL ROMAN NUMERAL THREE
   U+2173 |         ⅳ |             4 | SMALL ROMAN NUMERAL FOUR
   U+2174 |         ⅴ |             5 | SMALL ROMAN NUMERAL FIVE
   U+2175 |         ⅵ |             6 | SMALL ROMAN NUMERAL SIX
   U+2176 |         ⅶ |             7 | SMALL ROMAN NUMERAL SEVEN
   U+2177 |         ⅷ |             8 | SMALL ROMAN NUMERAL EIGHT
   U+2178 |         ⅸ |             9 | SMALL ROMAN NUMERAL NINE
   U+2179 |         ⅹ |            10 | SMALL ROMAN NUMERAL TEN
   U+217A |         ⅺ |            11 | SMALL ROMAN NUMERAL ELEVEN
   U+217B |         ⅻ |            12 | SMALL ROMAN NUMERAL TWELVE
   U+217C |         ⅼ |            50 | SMALL ROMAN NUMERAL FIFTY
   U+217D |         ⅽ |           100 | SMALL ROMAN NUMERAL ONE HUNDRED
   U+217E |         ⅾ |           500 | SMALL ROMAN NUMERAL FIVE HUNDRED
   U+217F |         ⅿ |          1000 | SMALL ROMAN NUMERAL ONE THOUSAND
   U+2180 |         ↀ |          1000 | ROMAN NUMERAL ONE THOUSAND C D
   U+2181 |         ↁ |          5000 | ROMAN NUMERAL FIVE THOUSAND
   U+2182 |         ↂ |         10000 | ROMAN NUMERAL TEN THOUSAND
   U+2185 |         ↅ |             6 | ROMAN NUMERAL SIX LATE FORM
   U+2186 |         ↆ |            50 | ROMAN NUMERAL FIFTY EARLY FORM
   U+2187 |         ↇ |         50000 | ROMAN NUMERAL FIFTY THOUSAND
   U+2188 |         ↈ |        100000 | ROMAN NUMERAL ONE HUNDRED THOUSAND
   U+2189 |         ↉ |             0 | VULGAR FRACTION ZERO THIRDS
   U+2460 |         ① |             1 | CIRCLED DIGIT ONE
   U+2461 |         ② |             2 | CIRCLED DIGIT TWO
   U+2462 |         ③ |             3 | CIRCLED DIGIT THREE
   U+2463 |         ④ |             4 | CIRCLED DIGIT FOUR
   U+2464 |         ⑤ |             5 | CIRCLED DIGIT FIVE
   U+2465 |         ⑥ |             6 | CIRCLED DIGIT SIX
   U+2466 |         ⑦ |             7 | CIRCLED DIGIT SEVEN
   U+2467 |         ⑧ |             8 | CIRCLED DIGIT EIGHT
   U+2468 |         ⑨ |             9 | CIRCLED DIGIT NINE
   U+2469 |         ⑩ |            10 | CIRCLED NUMBER TEN
   U+246A |         ⑪ |            11 | CIRCLED NUMBER ELEVEN
   U+246B |         ⑫ |            12 | CIRCLED NUMBER TWELVE
   U+246C |         ⑬ |            13 | CIRCLED NUMBER THIRTEEN
   U+246D |         ⑭ |            14 | CIRCLED NUMBER FOURTEEN
   U+246E |         ⑮ |            15 | CIRCLED NUMBER FIFTEEN
   U+246F |         ⑯ |            16 | CIRCLED NUMBER SIXTEEN
   U+2470 |         ⑰ |            17 | CIRCLED NUMBER SEVENTEEN
   U+2471 |         ⑱ |            18 | CIRCLED NUMBER EIGHTEEN
   U+2472 |         ⑲ |            19 | CIRCLED NUMBER NINETEEN
   U+2473 |         ⑳ |            20 | CIRCLED NUMBER TWENTY
   U+2474 |         ⑴ |             1 | PARENTHESIZED DIGIT ONE
   U+2475 |         ⑵ |             2 | PARENTHESIZED DIGIT TWO
   U+2476 |         ⑶ |             3 | PARENTHESIZED DIGIT THREE
   U+2477 |         ⑷ |             4 | PARENTHESIZED DIGIT FOUR
   U+2478 |         ⑸ |             5 | PARENTHESIZED DIGIT FIVE
   U+2479 |         ⑹ |             6 | PARENTHESIZED DIGIT SIX
   U+247A |         ⑺ |             7 | PARENTHESIZED DIGIT SEVEN
   U+247B |         ⑻ |             8 | PARENTHESIZED DIGIT EIGHT
   U+247C |         ⑼ |             9 | PARENTHESIZED DIGIT NINE
   U+247D |         ⑽ |            10 | PARENTHESIZED NUMBER TEN
   U+247E |         ⑾ |            11 | PARENTHESIZED NUMBER ELEVEN
   U+247F |         ⑿ |            12 | PARENTHESIZED NUMBER TWELVE
   U+2480 |         ⒀ |            13 | PARENTHESIZED NUMBER THIRTEEN
   U+2481 |         ⒁ |            14 | PARENTHESIZED NUMBER FOURTEEN
   U+2482 |         ⒂ |            15 | PARENTHESIZED NUMBER FIFTEEN
   U+2483 |         ⒃ |            16 | PARENTHESIZED NUMBER SIXTEEN
   U+2484 |         ⒄ |            17 | PARENTHESIZED NUMBER SEVENTEEN
   U+2485 |         ⒅ |            18 | PARENTHESIZED NUMBER EIGHTEEN
   U+2486 |         ⒆ |            19 | PARENTHESIZED NUMBER NINETEEN
   U+2487 |         ⒇ |            20 | PARENTHESIZED NUMBER TWENTY
   U+2488 |         ⒈ |             1 | DIGIT ONE FULL STOP
   U+2489 |         ⒉ |             2 | DIGIT TWO FULL STOP
   U+248A |         ⒊ |             3 | DIGIT THREE FULL STOP
   U+248B |         ⒋ |             4 | DIGIT FOUR FULL STOP
   U+248C |         ⒌ |             5 | DIGIT FIVE FULL STOP
   U+248D |         ⒍ |             6 | DIGIT SIX FULL STOP
   U+248E |         ⒎ |             7 | DIGIT SEVEN FULL STOP
   U+248F |         ⒏ |             8 | DIGIT EIGHT FULL STOP
   U+2490 |         ⒐ |             9 | DIGIT NINE FULL STOP
   U+2491 |         ⒑ |            10 | NUMBER TEN FULL STOP
   U+2492 |         ⒒ |            11 | NUMBER ELEVEN FULL STOP
   U+2493 |         ⒓ |            12 | NUMBER TWELVE FULL STOP
   U+2494 |         ⒔ |            13 | NUMBER THIRTEEN FULL STOP
   U+2495 |         ⒕ |            14 | NUMBER FOURTEEN FULL STOP
   U+2496 |         ⒖ |            15 | NUMBER FIFTEEN FULL STOP
   U+2497 |         ⒗ |            16 | NUMBER SIXTEEN FULL STOP
   U+2498 |         ⒘ |            17 | NUMBER SEVENTEEN FULL STOP
   U+2499 |         ⒙ |            18 | NUMBER EIGHTEEN FULL STOP
   U+249A |         ⒚ |            19 | NUMBER NINETEEN FULL STOP
   U+249B |         ⒛ |            20 | NUMBER TWENTY FULL STOP
   U+24EA |         ⓪ |             0 | CIRCLED DIGIT ZERO
   U+24EB |         ⓫ |            11 | NEGATIVE CIRCLED NUMBER ELEVEN
   U+24EC |         ⓬ |            12 | NEGATIVE CIRCLED NUMBER TWELVE
   U+24ED |         ⓭ |            13 | NEGATIVE CIRCLED NUMBER THIRTEEN
   U+24EE |         ⓮ |            14 | NEGATIVE CIRCLED NUMBER FOURTEEN
   U+24EF |         ⓯ |            15 | NEGATIVE CIRCLED NUMBER FIFTEEN
   U+24F0 |         ⓰ |            16 | NEGATIVE CIRCLED NUMBER SIXTEEN
   U+24F1 |         ⓱ |            17 | NEGATIVE CIRCLED NUMBER SEVENTEEN
   U+24F2 |         ⓲ |            18 | NEGATIVE CIRCLED NUMBER EIGHTEEN
   U+24F3 |         ⓳ |            19 | NEGATIVE CIRCLED NUMBER NINETEEN
   U+24F4 |         ⓴ |            20 | NEGATIVE CIRCLED NUMBER TWENTY
   U+24F5 |         ⓵ |             1 | DOUBLE CIRCLED DIGIT ONE
   U+24F6 |         ⓶ |             2 | DOUBLE CIRCLED DIGIT TWO
   U+24F7 |         ⓷ |             3 | DOUBLE CIRCLED DIGIT THREE
   U+24F8 |         ⓸ |             4 | DOUBLE CIRCLED DIGIT FOUR
   U+24F9 |         ⓹ |             5 | DOUBLE CIRCLED DIGIT FIVE
   U+24FA |         ⓺ |             6 | DOUBLE CIRCLED DIGIT SIX
   U+24FB |         ⓻ |             7 | DOUBLE CIRCLED DIGIT SEVEN
   U+24FC |         ⓼ |             8 | DOUBLE CIRCLED DIGIT EIGHT
   U+24FD |         ⓽ |             9 | DOUBLE CIRCLED DIGIT NINE
   U+24FE |         ⓾ |            10 | DOUBLE CIRCLED NUMBER TEN
   U+24FF |         ⓿ |             0 | NEGATIVE CIRCLED DIGIT ZERO
   U+2776 |         ❶ |             1 | DINGBAT NEGATIVE CIRCLED DIGIT ONE
   U+2777 |         ❷ |             2 | DINGBAT NEGATIVE CIRCLED DIGIT TWO
   U+2778 |         ❸ |             3 | DINGBAT NEGATIVE CIRCLED DIGIT THREE
   U+2779 |         ❹ |             4 | DINGBAT NEGATIVE CIRCLED DIGIT FOUR
   U+277A |         ❺ |             5 | DINGBAT NEGATIVE CIRCLED DIGIT FIVE
   U+277B |         ❻ |             6 | DINGBAT NEGATIVE CIRCLED DIGIT SIX
   U+277C |         ❼ |             7 | DINGBAT NEGATIVE CIRCLED DIGIT SEVEN
   U+277D |         ❽ |             8 | DINGBAT NEGATIVE CIRCLED DIGIT EIGHT
   U+277E |         ❾ |             9 | DINGBAT NEGATIVE CIRCLED DIGIT NINE
   U+277F |         ❿ |            10 | DINGBAT NEGATIVE CIRCLED NUMBER TEN
   U+2780 |         ➀ |             1 | DINGBAT CIRCLED SANS-SERIF DIGIT ONE
   U+2781 |         ➁ |             2 | DINGBAT CIRCLED SANS-SERIF DIGIT TWO
   U+2782 |         ➂ |             3 | DINGBAT CIRCLED SANS-SERIF DIGIT THREE
   U+2783 |         ➃ |             4 | DINGBAT CIRCLED SANS-SERIF DIGIT FOUR
   U+2784 |         ➄ |             5 | DINGBAT CIRCLED SANS-SERIF DIGIT FIVE
   U+2785 |         ➅ |             6 | DINGBAT CIRCLED SANS-SERIF DIGIT SIX
   U+2786 |         ➆ |             7 | DINGBAT CIRCLED SANS-SERIF DIGIT SEVEN
   U+2787 |         ➇ |             8 | DINGBAT CIRCLED SANS-SERIF DIGIT EIGHT
   U+2788 |         ➈ |             9 | DINGBAT CIRCLED SANS-SERIF DIGIT NINE
   U+2789 |         ➉ |            10 | DINGBAT CIRCLED SANS-SERIF NUMBER TEN
   U+278A |         ➊ |             1 | DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT ONE
   U+278B |         ➋ |             2 | DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT TWO
   U+278C |         ➌ |             3 | DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT THREE
   U+278D |         ➍ |             4 | DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT FOUR
   U+278E |         ➎ |             5 | DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT FIVE
   U+278F |         ➏ |             6 | DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT SIX
   U+2790 |         ➐ |             7 | DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT SEVEN
   U+2791 |         ➑ |             8 | DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT EIGHT
   U+2792 |         ➒ |             9 | DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT NINE
   U+2793 |         ➓ |            10 | DINGBAT NEGATIVE CIRCLED SANS-SERIF NUMBER TEN
   U+2CFD |         ⳽ |         (1/2) | COPTIC FRACTION ONE HALF
   U+3007 |         〇 |             0 | IDEOGRAPHIC NUMBER ZERO
   U+3021 |         〡 |             1 | HANGZHOU NUMERAL ONE
   U+3022 |         〢 |             2 | HANGZHOU NUMERAL TWO
   U+3023 |         〣 |             3 | HANGZHOU NUMERAL THREE
   U+3024 |         〤 |             4 | HANGZHOU NUMERAL FOUR
   U+3025 |         〥 |             5 | HANGZHOU NUMERAL FIVE
   U+3026 |         〦 |             6 | HANGZHOU NUMERAL SIX
   U+3027 |         〧 |             7 | HANGZHOU NUMERAL SEVEN
   U+3028 |         〨 |             8 | HANGZHOU NUMERAL EIGHT
   U+3029 |         〩 |             9 | HANGZHOU NUMERAL NINE
   U+3038 |         〸 |            10 | HANGZHOU NUMERAL TEN
   U+3039 |         〹 |            20 | HANGZHOU NUMERAL TWENTY
   U+303A |         〺 |            30 | HANGZHOU NUMERAL THIRTY
   U+3192 |         ㆒ |             1 | IDEOGRAPHIC ANNOTATION ONE MARK
   U+3193 |         ㆓ |             2 | IDEOGRAPHIC ANNOTATION TWO MARK
   U+3194 |         ㆔ |             3 | IDEOGRAPHIC ANNOTATION THREE MARK
   U+3195 |         ㆕ |             4 | IDEOGRAPHIC ANNOTATION FOUR MARK
   U+3220 |         ㈠ |             1 | PARENTHESIZED IDEOGRAPH ONE
   U+3221 |         ㈡ |             2 | PARENTHESIZED IDEOGRAPH TWO
   U+3222 |         ㈢ |             3 | PARENTHESIZED IDEOGRAPH THREE
   U+3223 |         ㈣ |             4 | PARENTHESIZED IDEOGRAPH FOUR
   U+3224 |         ㈤ |             5 | PARENTHESIZED IDEOGRAPH FIVE
   U+3225 |         ㈥ |             6 | PARENTHESIZED IDEOGRAPH SIX
   U+3226 |         ㈦ |             7 | PARENTHESIZED IDEOGRAPH SEVEN
   U+3227 |         ㈧ |             8 | PARENTHESIZED IDEOGRAPH EIGHT
   U+3228 |         ㈨ |             9 | PARENTHESIZED IDEOGRAPH NINE
   U+3229 |         ㈩ |            10 | PARENTHESIZED IDEOGRAPH TEN
   U+3248 |         ㉈ |            10 | CIRCLED NUMBER TEN ON BLACK SQUARE
   U+3249 |         ㉉ |            20 | CIRCLED NUMBER TWENTY ON BLACK SQUARE
   U+324A |         ㉊ |            30 | CIRCLED NUMBER THIRTY ON BLACK SQUARE
   U+324B |         ㉋ |            40 | CIRCLED NUMBER FORTY ON BLACK SQUARE
   U+324C |         ㉌ |            50 | CIRCLED NUMBER FIFTY ON BLACK SQUARE
   U+324D |         ㉍ |            60 | CIRCLED NUMBER SIXTY ON BLACK SQUARE
   U+324E |         ㉎ |            70 | CIRCLED NUMBER SEVENTY ON BLACK SQUARE
   U+324F |         ㉏ |            80 | CIRCLED NUMBER EIGHTY ON BLACK SQUARE
   U+3251 |         ㉑ |            21 | CIRCLED NUMBER TWENTY ONE
   U+3252 |         ㉒ |            22 | CIRCLED NUMBER TWENTY TWO
   U+3253 |         ㉓ |            23 | CIRCLED NUMBER TWENTY THREE
   U+3254 |         ㉔ |            24 | CIRCLED NUMBER TWENTY FOUR
   U+3255 |         ㉕ |            25 | CIRCLED NUMBER TWENTY FIVE
   U+3256 |         ㉖ |            26 | CIRCLED NUMBER TWENTY SIX
   U+3257 |         ㉗ |            27 | CIRCLED NUMBER TWENTY SEVEN
   U+3258 |         ㉘ |            28 | CIRCLED NUMBER TWENTY EIGHT
   U+3259 |         ㉙ |            29 | CIRCLED NUMBER TWENTY NINE
   U+325A |         ㉚ |            30 | CIRCLED NUMBER THIRTY
   U+325B |         ㉛ |            31 | CIRCLED NUMBER THIRTY ONE
   U+325C |         ㉜ |            32 | CIRCLED NUMBER THIRTY TWO
   U+325D |         ㉝ |            33 | CIRCLED NUMBER THIRTY THREE
   U+325E |         ㉞ |            34 | CIRCLED NUMBER THIRTY FOUR
   U+325F |         ㉟ |            35 | CIRCLED NUMBER THIRTY FIVE
   U+3280 |         ㊀ |             1 | CIRCLED IDEOGRAPH ONE
   U+3281 |         ㊁ |             2 | CIRCLED IDEOGRAPH TWO
   U+3282 |         ㊂ |             3 | CIRCLED IDEOGRAPH THREE
   U+3283 |         ㊃ |             4 | CIRCLED IDEOGRAPH FOUR
   U+3284 |         ㊄ |             5 | CIRCLED IDEOGRAPH FIVE
   U+3285 |         ㊅ |             6 | CIRCLED IDEOGRAPH SIX
   U+3286 |         ㊆ |             7 | CIRCLED IDEOGRAPH SEVEN
   U+3287 |         ㊇ |             8 | CIRCLED IDEOGRAPH EIGHT
   U+3288 |         ㊈ |             9 | CIRCLED IDEOGRAPH NINE
   U+3289 |         ㊉ |            10 | CIRCLED IDEOGRAPH TEN
   U+32B1 |         ㊱ |            36 | CIRCLED NUMBER THIRTY SIX
   U+32B2 |         ㊲ |            37 | CIRCLED NUMBER THIRTY SEVEN
   U+32B3 |         ㊳ |            38 | CIRCLED NUMBER THIRTY EIGHT
   U+32B4 |         ㊴ |            39 | CIRCLED NUMBER THIRTY NINE
   U+32B5 |         ㊵ |            40 | CIRCLED NUMBER FORTY
   U+32B6 |         ㊶ |            41 | CIRCLED NUMBER FORTY ONE
   U+32B7 |         ㊷ |            42 | CIRCLED NUMBER FORTY TWO
   U+32B8 |         ㊸ |            43 | CIRCLED NUMBER FORTY THREE
   U+32B9 |         ㊹ |            44 | CIRCLED NUMBER FORTY FOUR
   U+32BA |         ㊺ |            45 | CIRCLED NUMBER FORTY FIVE
   U+32BB |         ㊻ |            46 | CIRCLED NUMBER FORTY SIX
   U+32BC |         ㊼ |            47 | CIRCLED NUMBER FORTY SEVEN
   U+32BD |         ㊽ |            48 | CIRCLED NUMBER FORTY EIGHT
   U+32BE |         ㊾ |            49 | CIRCLED NUMBER FORTY NINE
   U+32BF |         ㊿ |            50 | CIRCLED NUMBER FIFTY
   U+3405 |         㐅 |             5 | CJK UNIFIED IDEOGRAPH-3405
   U+3483 |         㒃 |             2 | CJK UNIFIED IDEOGRAPH-3483
   U+382A |         㠪 |             5 | CJK UNIFIED IDEOGRAPH-382A
   U+3B4D |         㭍 |             7 | CJK UNIFIED IDEOGRAPH-3B4D
   U+4E00 |         一 |             1 | CJK UNIFIED IDEOGRAPH-4E00
   U+4E03 |         七 |             7 | CJK UNIFIED IDEOGRAPH-4E03
   U+4E07 |         万 |         10000 | CJK UNIFIED IDEOGRAPH-4E07
   U+4E09 |         三 |             3 | CJK UNIFIED IDEOGRAPH-4E09
   U+4E5D |         九 |             9 | CJK UNIFIED IDEOGRAPH-4E5D
   U+4E8C |         二 |             2 | CJK UNIFIED IDEOGRAPH-4E8C
   U+4E94 |         五 |             5 | CJK UNIFIED IDEOGRAPH-4E94
   U+4E96 |         亖 |             4 | CJK UNIFIED IDEOGRAPH-4E96
   U+4EBF |         亿 |     100000000 | CJK UNIFIED IDEOGRAPH-4EBF
   U+4EC0 |         什 |            10 | CJK UNIFIED IDEOGRAPH-4EC0
   U+4EDF |         仟 |          1000 | CJK UNIFIED IDEOGRAPH-4EDF
   U+4EE8 |         仨 |             3 | CJK UNIFIED IDEOGRAPH-4EE8
   U+4F0D |         伍 |             5 | CJK UNIFIED IDEOGRAPH-4F0D
   U+4F70 |         佰 |           100 | CJK UNIFIED IDEOGRAPH-4F70
   U+5104 |         億 |     100000000 | CJK UNIFIED IDEOGRAPH-5104
   U+5146 |         兆 | 1000000000000 | CJK UNIFIED IDEOGRAPH-5146
   U+5169 |         兩 |             2 | CJK UNIFIED IDEOGRAPH-5169
   U+516B |         八 |             8 | CJK UNIFIED IDEOGRAPH-516B
   U+516D |         六 |             6 | CJK UNIFIED IDEOGRAPH-516D
   U+5341 |         十 |            10 | CJK UNIFIED IDEOGRAPH-5341
   U+5343 |         千 |          1000 | CJK UNIFIED IDEOGRAPH-5343
   U+5344 |         卄 |            20 | CJK UNIFIED IDEOGRAPH-5344
   U+5345 |         卅 |            30 | CJK UNIFIED IDEOGRAPH-5345
   U+534C |         卌 |            40 | CJK UNIFIED IDEOGRAPH-534C
   U+53C1 |         叁 |             3 | CJK UNIFIED IDEOGRAPH-53C1
   U+53C2 |         参 |             3 | CJK UNIFIED IDEOGRAPH-53C2
   U+53C3 |         參 |             3 | CJK UNIFIED IDEOGRAPH-53C3
   U+53C4 |         叄 |             3 | CJK UNIFIED IDEOGRAPH-53C4
   U+56DB |         四 |             4 | CJK UNIFIED IDEOGRAPH-56DB
   U+58F1 |         壱 |             1 | CJK UNIFIED IDEOGRAPH-58F1
   U+58F9 |         壹 |             1 | CJK UNIFIED IDEOGRAPH-58F9
   U+5E7A |         幺 |             1 | CJK UNIFIED IDEOGRAPH-5E7A
   U+5EFE |         廾 |             9 | CJK UNIFIED IDEOGRAPH-5EFE
   U+5EFF |         廿 |            20 | CJK UNIFIED IDEOGRAPH-5EFF
   U+5F0C |         弌 |             1 | CJK UNIFIED IDEOGRAPH-5F0C
   U+5F0D |         弍 |             2 | CJK UNIFIED IDEOGRAPH-5F0D
   U+5F0E |         弎 |             3 | CJK UNIFIED IDEOGRAPH-5F0E
   U+5F10 |         弐 |             2 | CJK UNIFIED IDEOGRAPH-5F10
   U+62FE |         拾 |            10 | CJK UNIFIED IDEOGRAPH-62FE
   U+634C |         捌 |             8 | CJK UNIFIED IDEOGRAPH-634C
   U+67D2 |         柒 |             7 | CJK UNIFIED IDEOGRAPH-67D2
   U+6F06 |         漆 |             7 | CJK UNIFIED IDEOGRAPH-6F06
   U+7396 |         玖 |             9 | CJK UNIFIED IDEOGRAPH-7396
   U+767E |         百 |           100 | CJK UNIFIED IDEOGRAPH-767E
   U+8086 |         肆 |             4 | CJK UNIFIED IDEOGRAPH-8086
   U+842C |         萬 |         10000 | CJK UNIFIED IDEOGRAPH-842C
   U+8CAE |         貮 |             2 | CJK UNIFIED IDEOGRAPH-8CAE
   U+8CB3 |         貳 |             2 | CJK UNIFIED IDEOGRAPH-8CB3
   U+8D30 |         贰 |             2 | CJK UNIFIED IDEOGRAPH-8D30
   U+9621 |         阡 |          1000 | CJK UNIFIED IDEOGRAPH-9621
   U+9646 |         陆 |             6 | CJK UNIFIED IDEOGRAPH-9646
   U+964C |         陌 |           100 | CJK UNIFIED IDEOGRAPH-964C
   U+9678 |         陸 |             6 | CJK UNIFIED IDEOGRAPH-9678
   U+96F6 |         零 |             0 | CJK UNIFIED IDEOGRAPH-96F6
   U+A620 |         ꘠ |             0 | VAI DIGIT ZERO
   U+A621 |         ꘡ |             1 | VAI DIGIT ONE
   U+A622 |         ꘢ |             2 | VAI DIGIT TWO
   U+A623 |         ꘣ |             3 | VAI DIGIT THREE
   U+A624 |         ꘤ |             4 | VAI DIGIT FOUR
   U+A625 |         ꘥ |             5 | VAI DIGIT FIVE
   U+A626 |         ꘦ |             6 | VAI DIGIT SIX
   U+A627 |         ꘧ |             7 | VAI DIGIT SEVEN
   U+A628 |         ꘨ |             8 | VAI DIGIT EIGHT
   U+A629 |         ꘩ |             9 | VAI DIGIT NINE
   U+A6E6 |         ꛦ |             1 | BAMUM LETTER MO
   U+A6E7 |         ꛧ |             2 | BAMUM LETTER MBAA
   U+A6E8 |         ꛨ |             3 | BAMUM LETTER TET
   U+A6E9 |         ꛩ |             4 | BAMUM LETTER KPA
   U+A6EA |         ꛪ |             5 | BAMUM LETTER TEN
   U+A6EB |         ꛫ |             6 | BAMUM LETTER NTUU
   U+A6EC |         ꛬ |             7 | BAMUM LETTER SAMBA
   U+A6ED |         ꛭ |             8 | BAMUM LETTER FAAMAE
   U+A6EE |         ꛮ |             9 | BAMUM LETTER KOVUU
   U+A6EF |         ꛯ |             0 | BAMUM LETTER KOGHOM
   U+A830 |         ꠰ |         (1/4) | NORTH INDIC FRACTION ONE QUARTER
   U+A831 |         ꠱ |         (1/2) | NORTH INDIC FRACTION ONE HALF
   U+A832 |         ꠲ |         (3/4) | NORTH INDIC FRACTION THREE QUARTERS
   U+A833 |         ꠳ |        (1/16) | NORTH INDIC FRACTION ONE SIXTEENTH
   U+A834 |         ꠴ |         (1/8) | NORTH INDIC FRACTION ONE EIGHTH
   U+A835 |         ꠵ |        (3/16) | NORTH INDIC FRACTION THREE SIXTEENTHS
   U+A8D0 |         ꣐ |             0 | SAURASHTRA DIGIT ZERO
   U+A8D1 |         ꣑ |             1 | SAURASHTRA DIGIT ONE
   U+A8D2 |         ꣒ |             2 | SAURASHTRA DIGIT TWO
   U+A8D3 |         ꣓ |             3 | SAURASHTRA DIGIT THREE
   U+A8D4 |         ꣔ |             4 | SAURASHTRA DIGIT FOUR
   U+A8D5 |         ꣕ |             5 | SAURASHTRA DIGIT FIVE
   U+A8D6 |         ꣖ |             6 | SAURASHTRA DIGIT SIX
   U+A8D7 |         ꣗ |             7 | SAURASHTRA DIGIT SEVEN
   U+A8D8 |         ꣘ |             8 | SAURASHTRA DIGIT EIGHT
   U+A8D9 |         ꣙ |             9 | SAURASHTRA DIGIT NINE
   U+A900 |         ꤀ |             0 | KAYAH LI DIGIT ZERO
   U+A901 |         ꤁ |             1 | KAYAH LI DIGIT ONE
   U+A902 |         ꤂ |             2 | KAYAH LI DIGIT TWO
   U+A903 |         ꤃ |             3 | KAYAH LI DIGIT THREE
   U+A904 |         ꤄ |             4 | KAYAH LI DIGIT FOUR
   U+A905 |         ꤅ |             5 | KAYAH LI DIGIT FIVE
   U+A906 |         ꤆ |             6 | KAYAH LI DIGIT SIX
   U+A907 |         ꤇ |             7 | KAYAH LI DIGIT SEVEN
   U+A908 |         ꤈ |             8 | KAYAH LI DIGIT EIGHT
   U+A909 |         ꤉ |             9 | KAYAH LI DIGIT NINE
   U+A9D0 |         ꧐ |             0 | JAVANESE DIGIT ZERO
   U+A9D1 |         ꧑ |             1 | JAVANESE DIGIT ONE
   U+A9D2 |         ꧒ |             2 | JAVANESE DIGIT TWO
   U+A9D3 |         ꧓ |             3 | JAVANESE DIGIT THREE
   U+A9D4 |         ꧔ |             4 | JAVANESE DIGIT FOUR
   U+A9D5 |         ꧕ |             5 | JAVANESE DIGIT FIVE
   U+A9D6 |         ꧖ |             6 | JAVANESE DIGIT SIX
   U+A9D7 |         ꧗ |             7 | JAVANESE DIGIT SEVEN
   U+A9D8 |         ꧘ |             8 | JAVANESE DIGIT EIGHT
   U+A9D9 |         ꧙ |             9 | JAVANESE DIGIT NINE
   U+A9F0 |         ꧰ |             0 | MYANMAR TAI LAING DIGIT ZERO
   U+A9F1 |         ꧱ |             1 | MYANMAR TAI LAING DIGIT ONE
   U+A9F2 |         ꧲ |             2 | MYANMAR TAI LAING DIGIT TWO
   U+A9F3 |         ꧳ |             3 | MYANMAR TAI LAING DIGIT THREE
   U+A9F4 |         ꧴ |             4 | MYANMAR TAI LAING DIGIT FOUR
   U+A9F5 |         ꧵ |             5 | MYANMAR TAI LAING DIGIT FIVE
   U+A9F6 |         ꧶ |             6 | MYANMAR TAI LAING DIGIT SIX
   U+A9F7 |         ꧷ |             7 | MYANMAR TAI LAING DIGIT SEVEN
   U+A9F8 |         ꧸ |             8 | MYANMAR TAI LAING DIGIT EIGHT
   U+A9F9 |         ꧹ |             9 | MYANMAR TAI LAING DIGIT NINE
   U+AA50 |         ꩐ |             0 | CHAM DIGIT ZERO
   U+AA51 |         ꩑ |             1 | CHAM DIGIT ONE
   U+AA52 |         ꩒ |             2 | CHAM DIGIT TWO
   U+AA53 |         ꩓ |             3 | CHAM DIGIT THREE
   U+AA54 |         ꩔ |             4 | CHAM DIGIT FOUR
   U+AA55 |         ꩕ |             5 | CHAM DIGIT FIVE
   U+AA56 |         ꩖ |             6 | CHAM DIGIT SIX
   U+AA57 |         ꩗ |             7 | CHAM DIGIT SEVEN
   U+AA58 |         ꩘ |             8 | CHAM DIGIT EIGHT
   U+AA59 |         ꩙ |             9 | CHAM DIGIT NINE
   U+ABF0 |         ꯰ |             0 | MEETEI MAYEK DIGIT ZERO
   U+ABF1 |         ꯱ |             1 | MEETEI MAYEK DIGIT ONE
   U+ABF2 |         ꯲ |             2 | MEETEI MAYEK DIGIT TWO
   U+ABF3 |         ꯳ |             3 | MEETEI MAYEK DIGIT THREE
   U+ABF4 |         ꯴ |             4 | MEETEI MAYEK DIGIT FOUR
   U+ABF5 |         ꯵ |             5 | MEETEI MAYEK DIGIT FIVE
   U+ABF6 |         ꯶ |             6 | MEETEI MAYEK DIGIT SIX
   U+ABF7 |         ꯷ |             7 | MEETEI MAYEK DIGIT SEVEN
   U+ABF8 |         ꯸ |             8 | MEETEI MAYEK DIGIT EIGHT
   U+ABF9 |         ꯹ |             9 | MEETEI MAYEK DIGIT NINE
   U+F96B |         參 |             3 | CJK COMPATIBILITY IDEOGRAPH-F96B
   U+F973 |         拾 |            10 | CJK COMPATIBILITY IDEOGRAPH-F973
   U+F978 |         兩 |             2 | CJK COMPATIBILITY IDEOGRAPH-F978
   U+F9B2 |         零 |             0 | CJK COMPATIBILITY IDEOGRAPH-F9B2
   U+F9D1 |         六 |             6 | CJK COMPATIBILITY IDEOGRAPH-F9D1
   U+F9D3 |         陸 |             6 | CJK COMPATIBILITY IDEOGRAPH-F9D3
   U+F9FD |         什 |            10 | CJK COMPATIBILITY IDEOGRAPH-F9FD
   U+FF10 |         ０ |             0 | FULLWIDTH DIGIT ZERO
   U+FF11 |         １ |             1 | FULLWIDTH DIGIT ONE
   U+FF12 |         ２ |             2 | FULLWIDTH DIGIT TWO
   U+FF13 |         ３ |             3 | FULLWIDTH DIGIT THREE
   U+FF14 |         ４ |             4 | FULLWIDTH DIGIT FOUR
   U+FF15 |         ５ |             5 | FULLWIDTH DIGIT FIVE
   U+FF16 |         ６ |             6 | FULLWIDTH DIGIT SIX
   U+FF17 |         ７ |             7 | FULLWIDTH DIGIT SEVEN
   U+FF18 |         ８ |             8 | FULLWIDTH DIGIT EIGHT
   U+FF19 |         ９ |             9 | FULLWIDTH DIGIT NINE
  U+10107 |         𐄇 |             1 | AEGEAN NUMBER ONE
  U+10108 |         𐄈 |             2 | AEGEAN NUMBER TWO
  U+10109 |         𐄉 |             3 | AEGEAN NUMBER THREE
  U+1010A |         𐄊 |             4 | AEGEAN NUMBER FOUR
  U+1010B |         𐄋 |             5 | AEGEAN NUMBER FIVE
  U+1010C |         𐄌 |             6 | AEGEAN NUMBER SIX
  U+1010D |         𐄍 |             7 | AEGEAN NUMBER SEVEN
  U+1010E |         𐄎 |             8 | AEGEAN NUMBER EIGHT
  U+1010F |         𐄏 |             9 | AEGEAN NUMBER NINE
  U+10110 |         𐄐 |            10 | AEGEAN NUMBER TEN
  U+10111 |         𐄑 |            20 | AEGEAN NUMBER TWENTY
  U+10112 |         𐄒 |            30 | AEGEAN NUMBER THIRTY
  U+10113 |         𐄓 |            40 | AEGEAN NUMBER FORTY
  U+10114 |         𐄔 |            50 | AEGEAN NUMBER FIFTY
  U+10115 |         𐄕 |            60 | AEGEAN NUMBER SIXTY
  U+10116 |         𐄖 |            70 | AEGEAN NUMBER SEVENTY
  U+10117 |         𐄗 |            80 | AEGEAN NUMBER EIGHTY
  U+10118 |         𐄘 |            90 | AEGEAN NUMBER NINETY
  U+10119 |         𐄙 |           100 | AEGEAN NUMBER ONE HUNDRED
  U+1011A |         𐄚 |           200 | AEGEAN NUMBER TWO HUNDRED
  U+1011B |         𐄛 |           300 | AEGEAN NUMBER THREE HUNDRED
  U+1011C |         𐄜 |           400 | AEGEAN NUMBER FOUR HUNDRED
  U+1011D |         𐄝 |           500 | AEGEAN NUMBER FIVE HUNDRED
  U+1011E |         𐄞 |           600 | AEGEAN NUMBER SIX HUNDRED
  U+1011F |         𐄟 |           700 | AEGEAN NUMBER SEVEN HUNDRED
  U+10120 |         𐄠 |           800 | AEGEAN NUMBER EIGHT HUNDRED
  U+10121 |         𐄡 |           900 | AEGEAN NUMBER NINE HUNDRED
  U+10122 |         𐄢 |          1000 | AEGEAN NUMBER ONE THOUSAND
  U+10123 |         𐄣 |          2000 | AEGEAN NUMBER TWO THOUSAND
  U+10124 |         𐄤 |          3000 | AEGEAN NUMBER THREE THOUSAND
  U+10125 |         𐄥 |          4000 | AEGEAN NUMBER FOUR THOUSAND
  U+10126 |         𐄦 |          5000 | AEGEAN NUMBER FIVE THOUSAND
  U+10127 |         𐄧 |          6000 | AEGEAN NUMBER SIX THOUSAND
  U+10128 |         𐄨 |          7000 | AEGEAN NUMBER SEVEN THOUSAND
  U+10129 |         𐄩 |          8000 | AEGEAN NUMBER EIGHT THOUSAND
  U+1012A |         𐄪 |          9000 | AEGEAN NUMBER NINE THOUSAND
  U+1012B |         𐄫 |         10000 | AEGEAN NUMBER TEN THOUSAND
  U+1012C |         𐄬 |         20000 | AEGEAN NUMBER TWENTY THOUSAND
  U+1012D |         𐄭 |         30000 | AEGEAN NUMBER THIRTY THOUSAND
  U+1012E |         𐄮 |         40000 | AEGEAN NUMBER FORTY THOUSAND
  U+1012F |         𐄯 |         50000 | AEGEAN NUMBER FIFTY THOUSAND
  U+10130 |         𐄰 |         60000 | AEGEAN NUMBER SIXTY THOUSAND
  U+10131 |         𐄱 |         70000 | AEGEAN NUMBER SEVENTY THOUSAND
  U+10132 |         𐄲 |         80000 | AEGEAN NUMBER EIGHTY THOUSAND
  U+10133 |         𐄳 |         90000 | AEGEAN NUMBER NINETY THOUSAND
  U+10140 |         𐅀 |         (1/4) | GREEK ACROPHONIC ATTIC ONE QUARTER
  U+10141 |         𐅁 |         (1/2) | GREEK ACROPHONIC ATTIC ONE HALF
  U+10142 |         𐅂 |             1 | GREEK ACROPHONIC ATTIC ONE DRACHMA
  U+10143 |         𐅃 |             5 | GREEK ACROPHONIC ATTIC FIVE
  U+10144 |         𐅄 |            50 | GREEK ACROPHONIC ATTIC FIFTY
  U+10145 |         𐅅 |           500 | GREEK ACROPHONIC ATTIC FIVE HUNDRED
  U+10146 |         𐅆 |          5000 | GREEK ACROPHONIC ATTIC FIVE THOUSAND
  U+10147 |         𐅇 |         50000 | GREEK ACROPHONIC ATTIC FIFTY THOUSAND
  U+10148 |         𐅈 |             5 | GREEK ACROPHONIC ATTIC FIVE TALENTS
  U+10149 |         𐅉 |            10 | GREEK ACROPHONIC ATTIC TEN TALENTS
  U+1014A |         𐅊 |            50 | GREEK ACROPHONIC ATTIC FIFTY TALENTS
  U+1014B |         𐅋 |           100 | GREEK ACROPHONIC ATTIC ONE HUNDRED TALENTS
  U+1014C |         𐅌 |           500 | GREEK ACROPHONIC ATTIC FIVE HUNDRED TALENTS
  U+1014D |         𐅍 |          1000 | GREEK ACROPHONIC ATTIC ONE THOUSAND TALENTS
  U+1014E |         𐅎 |          5000 | GREEK ACROPHONIC ATTIC FIVE THOUSAND TALENTS
  U+1014F |         𐅏 |             5 | GREEK ACROPHONIC ATTIC FIVE STATERS
  U+10150 |         𐅐 |            10 | GREEK ACROPHONIC ATTIC TEN STATERS
  U+10151 |         𐅑 |            50 | GREEK ACROPHONIC ATTIC FIFTY STATERS
  U+10152 |         𐅒 |           100 | GREEK ACROPHONIC ATTIC ONE HUNDRED STATERS
  U+10153 |         𐅓 |           500 | GREEK ACROPHONIC ATTIC FIVE HUNDRED STATERS
  U+10154 |         𐅔 |          1000 | GREEK ACROPHONIC ATTIC ONE THOUSAND STATERS
  U+10155 |         𐅕 |         10000 | GREEK ACROPHONIC ATTIC TEN THOUSAND STATERS
  U+10156 |         𐅖 |         50000 | GREEK ACROPHONIC ATTIC FIFTY THOUSAND STATERS
  U+10157 |         𐅗 |            10 | GREEK ACROPHONIC ATTIC TEN MNAS
  U+10158 |         𐅘 |             1 | GREEK ACROPHONIC HERAEUM ONE PLETHRON
  U+10159 |         𐅙 |             1 | GREEK ACROPHONIC THESPIAN ONE
  U+1015A |         𐅚 |             1 | GREEK ACROPHONIC HERMIONIAN ONE
  U+1015B |         𐅛 |             2 | GREEK ACROPHONIC EPIDAUREAN TWO
  U+1015C |         𐅜 |             2 | GREEK ACROPHONIC THESPIAN TWO
  U+1015D |         𐅝 |             2 | GREEK ACROPHONIC CYRENAIC TWO DRACHMAS
  U+1015E |         𐅞 |             2 | GREEK ACROPHONIC EPIDAUREAN TWO DRACHMAS
  U+1015F |         𐅟 |             5 | GREEK ACROPHONIC TROEZENIAN FIVE
  U+10160 |         𐅠 |            10 | GREEK ACROPHONIC TROEZENIAN TEN
  U+10161 |         𐅡 |            10 | GREEK ACROPHONIC TROEZENIAN TEN ALTERNATE FORM
  U+10162 |         𐅢 |            10 | GREEK ACROPHONIC HERMIONIAN TEN
  U+10163 |         𐅣 |            10 | GREEK ACROPHONIC MESSENIAN TEN
  U+10164 |         𐅤 |            10 | GREEK ACROPHONIC THESPIAN TEN
  U+10165 |         𐅥 |            30 | GREEK ACROPHONIC THESPIAN THIRTY
  U+10166 |         𐅦 |            50 | GREEK ACROPHONIC TROEZENIAN FIFTY
  U+10167 |         𐅧 |            50 | GREEK ACROPHONIC TROEZENIAN FIFTY ALTERNATE FORM
  U+10168 |         𐅨 |            50 | GREEK ACROPHONIC HERMIONIAN FIFTY
  U+10169 |         𐅩 |            50 | GREEK ACROPHONIC THESPIAN FIFTY
  U+1016A |         𐅪 |           100 | GREEK ACROPHONIC THESPIAN ONE HUNDRED
  U+1016B |         𐅫 |           300 | GREEK ACROPHONIC THESPIAN THREE HUNDRED
  U+1016C |         𐅬 |           500 | GREEK ACROPHONIC EPIDAUREAN FIVE HUNDRED
  U+1016D |         𐅭 |           500 | GREEK ACROPHONIC TROEZENIAN FIVE HUNDRED
  U+1016E |         𐅮 |           500 | GREEK ACROPHONIC THESPIAN FIVE HUNDRED
  U+1016F |         𐅯 |           500 | GREEK ACROPHONIC CARYSTIAN FIVE HUNDRED
  U+10170 |         𐅰 |           500 | GREEK ACROPHONIC NAXIAN FIVE HUNDRED
  U+10171 |         𐅱 |          1000 | GREEK ACROPHONIC THESPIAN ONE THOUSAND
  U+10172 |         𐅲 |          5000 | GREEK ACROPHONIC THESPIAN FIVE THOUSAND
  U+10173 |         𐅳 |             5 | GREEK ACROPHONIC DELPHIC FIVE MNAS
  U+10174 |         𐅴 |            50 | GREEK ACROPHONIC STRATIAN FIFTY MNAS
  U+10175 |         𐅵 |         (1/2) | GREEK ONE HALF SIGN
  U+10176 |         𐅶 |         (1/2) | GREEK ONE HALF SIGN ALTERNATE FORM
  U+10177 |         𐅷 |         (2/3) | GREEK TWO THIRDS SIGN
  U+10178 |         𐅸 |         (3/4) | GREEK THREE QUARTERS SIGN
  U+1018A |         𐆊 |             0 | GREEK ZERO SIGN
  U+1018B |         𐆋 |         (1/4) | GREEK ONE QUARTER SIGN
  U+102E1 |         𐋡 |             1 | COPTIC EPACT DIGIT ONE
  U+102E2 |         𐋢 |             2 | COPTIC EPACT DIGIT TWO
  U+102E3 |         𐋣 |             3 | COPTIC EPACT DIGIT THREE
  U+102E4 |         𐋤 |             4 | COPTIC EPACT DIGIT FOUR
  U+102E5 |         𐋥 |             5 | COPTIC EPACT DIGIT FIVE
  U+102E6 |         𐋦 |             6 | COPTIC EPACT DIGIT SIX
  U+102E7 |         𐋧 |             7 | COPTIC EPACT DIGIT SEVEN
  U+102E8 |         𐋨 |             8 | COPTIC EPACT DIGIT EIGHT
  U+102E9 |         𐋩 |             9 | COPTIC EPACT DIGIT NINE
  U+102EA |         𐋪 |            10 | COPTIC EPACT NUMBER TEN
  U+102EB |         𐋫 |            20 | COPTIC EPACT NUMBER TWENTY
  U+102EC |         𐋬 |            30 | COPTIC EPACT NUMBER THIRTY
  U+102ED |         𐋭 |            40 | COPTIC EPACT NUMBER FORTY
  U+102EE |         𐋮 |            50 | COPTIC EPACT NUMBER FIFTY
  U+102EF |         𐋯 |            60 | COPTIC EPACT NUMBER SIXTY
  U+102F0 |         𐋰 |            70 | COPTIC EPACT NUMBER SEVENTY
  U+102F1 |         𐋱 |            80 | COPTIC EPACT NUMBER EIGHTY
  U+102F2 |         𐋲 |            90 | COPTIC EPACT NUMBER NINETY
  U+102F3 |         𐋳 |           100 | COPTIC EPACT NUMBER ONE HUNDRED
  U+102F4 |         𐋴 |           200 | COPTIC EPACT NUMBER TWO HUNDRED
  U+102F5 |         𐋵 |           300 | COPTIC EPACT NUMBER THREE HUNDRED
  U+102F6 |         𐋶 |           400 | COPTIC EPACT NUMBER FOUR HUNDRED
  U+102F7 |         𐋷 |           500 | COPTIC EPACT NUMBER FIVE HUNDRED
  U+102F8 |         𐋸 |           600 | COPTIC EPACT NUMBER SIX HUNDRED
  U+102F9 |         𐋹 |           700 | COPTIC EPACT NUMBER SEVEN HUNDRED
  U+102FA |         𐋺 |           800 | COPTIC EPACT NUMBER EIGHT HUNDRED
  U+102FB |         𐋻 |           900 | COPTIC EPACT NUMBER NINE HUNDRED
  U+10320 |         𐌠 |             1 | OLD ITALIC NUMERAL ONE
  U+10321 |         𐌡 |             5 | OLD ITALIC NUMERAL FIVE
  U+10322 |         𐌢 |            10 | OLD ITALIC NUMERAL TEN
  U+10323 |         𐌣 |            50 | OLD ITALIC NUMERAL FIFTY
  U+10341 |         𐍁 |            90 | GOTHIC LETTER NINETY
  U+1034A |         𐍊 |           900 | GOTHIC LETTER NINE HUNDRED
  U+103D1 |         𐏑 |             1 | OLD PERSIAN NUMBER ONE
  U+103D2 |         𐏒 |             2 | OLD PERSIAN NUMBER TWO
  U+103D3 |         𐏓 |            10 | OLD PERSIAN NUMBER TEN
  U+103D4 |         𐏔 |            20 | OLD PERSIAN NUMBER TWENTY
  U+103D5 |         𐏕 |           100 | OLD PERSIAN NUMBER HUNDRED
  U+104A0 |         𐒠 |             0 | OSMANYA DIGIT ZERO
  U+104A1 |         𐒡 |             1 | OSMANYA DIGIT ONE
  U+104A2 |         𐒢 |             2 | OSMANYA DIGIT TWO
  U+104A3 |         𐒣 |             3 | OSMANYA DIGIT THREE
  U+104A4 |         𐒤 |             4 | OSMANYA DIGIT FOUR
  U+104A5 |         𐒥 |             5 | OSMANYA DIGIT FIVE
  U+104A6 |         𐒦 |             6 | OSMANYA DIGIT SIX
  U+104A7 |         𐒧 |             7 | OSMANYA DIGIT SEVEN
  U+104A8 |         𐒨 |             8 | OSMANYA DIGIT EIGHT
  U+104A9 |         𐒩 |             9 | OSMANYA DIGIT NINE
  U+10858 |         𐡘 |             1 | IMPERIAL ARAMAIC NUMBER ONE
  U+10859 |         𐡙 |             2 | IMPERIAL ARAMAIC NUMBER TWO
  U+1085A |         𐡚 |             3 | IMPERIAL ARAMAIC NUMBER THREE
  U+1085B |         𐡛 |            10 | IMPERIAL ARAMAIC NUMBER TEN
  U+1085C |         𐡜 |            20 | IMPERIAL ARAMAIC NUMBER TWENTY
  U+1085D |         𐡝 |           100 | IMPERIAL ARAMAIC NUMBER ONE HUNDRED
  U+1085E |         𐡞 |          1000 | IMPERIAL ARAMAIC NUMBER ONE THOUSAND
  U+1085F |         𐡟 |         10000 | IMPERIAL ARAMAIC NUMBER TEN THOUSAND
  U+10879 |         𐡹 |             1 | PALMYRENE NUMBER ONE
  U+1087A |         𐡺 |             2 | PALMYRENE NUMBER TWO
  U+1087B |         𐡻 |             3 | PALMYRENE NUMBER THREE
  U+1087C |         𐡼 |             4 | PALMYRENE NUMBER FOUR
  U+1087D |         𐡽 |             5 | PALMYRENE NUMBER FIVE
  U+1087E |         𐡾 |            10 | PALMYRENE NUMBER TEN
  U+1087F |         𐡿 |            20 | PALMYRENE NUMBER TWENTY
  U+108A7 |         𐢧 |             1 | NABATAEAN NUMBER ONE
  U+108A8 |         𐢨 |             2 | NABATAEAN NUMBER TWO
  U+108A9 |         𐢩 |             3 | NABATAEAN NUMBER THREE
  U+108AA |         𐢪 |             4 | NABATAEAN NUMBER FOUR
  U+108AB |         𐢫 |             4 | NABATAEAN CRUCIFORM NUMBER FOUR
  U+108AC |         𐢬 |             5 | NABATAEAN NUMBER FIVE
  U+108AD |         𐢭 |            10 | NABATAEAN NUMBER TEN
  U+108AE |         𐢮 |            20 | NABATAEAN NUMBER TWENTY
  U+108AF |         𐢯 |           100 | NABATAEAN NUMBER ONE HUNDRED
  U+108FB |         𐣻 |             1 | HATRAN NUMBER ONE
  U+108FC |         𐣼 |             5 | HATRAN NUMBER FIVE
  U+108FD |         𐣽 |            10 | HATRAN NUMBER TEN
  U+108FE |         𐣾 |            20 | HATRAN NUMBER TWENTY
  U+108FF |         𐣿 |           100 | HATRAN NUMBER ONE HUNDRED
  U+10916 |         𐤖 |             1 | PHOENICIAN NUMBER ONE
  U+10917 |         𐤗 |            10 | PHOENICIAN NUMBER TEN
  U+10918 |         𐤘 |            20 | PHOENICIAN NUMBER TWENTY
  U+10919 |         𐤙 |           100 | PHOENICIAN NUMBER ONE HUNDRED
  U+1091A |         𐤚 |             2 | PHOENICIAN NUMBER TWO
  U+1091B |         𐤛 |             3 | PHOENICIAN NUMBER THREE
  U+109BC |         𐦼 |       (11/12) | MEROITIC CURSIVE FRACTION ELEVEN TWELFTHS
  U+109BD |         𐦽 |         (1/2) | MEROITIC CURSIVE FRACTION ONE HALF
  U+109C0 |         𐧀 |             1 | MEROITIC CURSIVE NUMBER ONE
  U+109C1 |         𐧁 |             2 | MEROITIC CURSIVE NUMBER TWO
  U+109C2 |         𐧂 |             3 | MEROITIC CURSIVE NUMBER THREE
  U+109C3 |         𐧃 |             4 | MEROITIC CURSIVE NUMBER FOUR
  U+109C4 |         𐧄 |             5 | MEROITIC CURSIVE NUMBER FIVE
  U+109C5 |         𐧅 |             6 | MEROITIC CURSIVE NUMBER SIX
  U+109C6 |         𐧆 |             7 | MEROITIC CURSIVE NUMBER SEVEN
  U+109C7 |         𐧇 |             8 | MEROITIC CURSIVE NUMBER EIGHT
  U+109C8 |         𐧈 |             9 | MEROITIC CURSIVE NUMBER NINE
  U+109C9 |         𐧉 |            10 | MEROITIC CURSIVE NUMBER TEN
  U+109CA |         𐧊 |            20 | MEROITIC CURSIVE NUMBER TWENTY
  U+109CB |         𐧋 |            30 | MEROITIC CURSIVE NUMBER THIRTY
  U+109CC |         𐧌 |            40 | MEROITIC CURSIVE NUMBER FORTY
  U+109CD |         𐧍 |            50 | MEROITIC CURSIVE NUMBER FIFTY
  U+109CE |         𐧎 |            60 | MEROITIC CURSIVE NUMBER SIXTY
  U+109CF |         𐧏 |            70 | MEROITIC CURSIVE NUMBER SEVENTY
  U+109D2 |         𐧒 |           100 | MEROITIC CURSIVE NUMBER ONE HUNDRED
  U+109D3 |         𐧓 |           200 | MEROITIC CURSIVE NUMBER TWO HUNDRED
  U+109D4 |         𐧔 |           300 | MEROITIC CURSIVE NUMBER THREE HUNDRED
  U+109D5 |         𐧕 |           400 | MEROITIC CURSIVE NUMBER FOUR HUNDRED
  U+109D6 |         𐧖 |           500 | MEROITIC CURSIVE NUMBER FIVE HUNDRED
  U+109D7 |         𐧗 |           600 | MEROITIC CURSIVE NUMBER SIX HUNDRED
  U+109D8 |         𐧘 |           700 | MEROITIC CURSIVE NUMBER SEVEN HUNDRED
  U+109D9 |         𐧙 |           800 | MEROITIC CURSIVE NUMBER EIGHT HUNDRED
  U+109DA |         𐧚 |           900 | MEROITIC CURSIVE NUMBER NINE HUNDRED
  U+109DB |         𐧛 |          1000 | MEROITIC CURSIVE NUMBER ONE THOUSAND
  U+109DC |         𐧜 |          2000 | MEROITIC CURSIVE NUMBER TWO THOUSAND
  U+109DD |         𐧝 |          3000 | MEROITIC CURSIVE NUMBER THREE THOUSAND
  U+109DE |         𐧞 |          4000 | MEROITIC CURSIVE NUMBER FOUR THOUSAND
  U+109DF |         𐧟 |          5000 | MEROITIC CURSIVE NUMBER FIVE THOUSAND
  U+109E0 |         𐧠 |          6000 | MEROITIC CURSIVE NUMBER SIX THOUSAND
  U+109E1 |         𐧡 |          7000 | MEROITIC CURSIVE NUMBER SEVEN THOUSAND
  U+109E2 |         𐧢 |          8000 | MEROITIC CURSIVE NUMBER EIGHT THOUSAND
  U+109E3 |         𐧣 |          9000 | MEROITIC CURSIVE NUMBER NINE THOUSAND
  U+109E4 |         𐧤 |         10000 | MEROITIC CURSIVE NUMBER TEN THOUSAND
  U+109E5 |         𐧥 |         20000 | MEROITIC CURSIVE NUMBER TWENTY THOUSAND
  U+109E6 |         𐧦 |         30000 | MEROITIC CURSIVE NUMBER THIRTY THOUSAND
  U+109E7 |         𐧧 |         40000 | MEROITIC CURSIVE NUMBER FORTY THOUSAND
  U+109E8 |         𐧨 |         50000 | MEROITIC CURSIVE NUMBER FIFTY THOUSAND
  U+109E9 |         𐧩 |         60000 | MEROITIC CURSIVE NUMBER SIXTY THOUSAND
  U+109EA |         𐧪 |         70000 | MEROITIC CURSIVE NUMBER SEVENTY THOUSAND
  U+109EB |         𐧫 |         80000 | MEROITIC CURSIVE NUMBER EIGHTY THOUSAND
  U+109EC |         𐧬 |         90000 | MEROITIC CURSIVE NUMBER NINETY THOUSAND
  U+109ED |         𐧭 |        100000 | MEROITIC CURSIVE NUMBER ONE HUNDRED THOUSAND
  U+109EE |         𐧮 |        200000 | MEROITIC CURSIVE NUMBER TWO HUNDRED THOUSAND
  U+109EF |         𐧯 |        300000 | MEROITIC CURSIVE NUMBER THREE HUNDRED THOUSAND
  U+109F0 |         𐧰 |        400000 | MEROITIC CURSIVE NUMBER FOUR HUNDRED THOUSAND
  U+109F1 |         𐧱 |        500000 | MEROITIC CURSIVE NUMBER FIVE HUNDRED THOUSAND
  U+109F2 |         𐧲 |        600000 | MEROITIC CURSIVE NUMBER SIX HUNDRED THOUSAND
  U+109F3 |         𐧳 |        700000 | MEROITIC CURSIVE NUMBER SEVEN HUNDRED THOUSAND
  U+109F4 |         𐧴 |        800000 | MEROITIC CURSIVE NUMBER EIGHT HUNDRED THOUSAND
  U+109F5 |         𐧵 |        900000 | MEROITIC CURSIVE NUMBER NINE HUNDRED THOUSAND
  U+109F6 |         𐧶 |        (1/12) | MEROITIC CURSIVE FRACTION ONE TWELFTH
  U+109F7 |         𐧷 |         (1/6) | MEROITIC CURSIVE FRACTION TWO TWELFTHS
  U+109F8 |         𐧸 |         (1/4) | MEROITIC CURSIVE FRACTION THREE TWELFTHS
  U+109F9 |         𐧹 |         (1/3) | MEROITIC CURSIVE FRACTION FOUR TWELFTHS
  U+109FA |         𐧺 |        (5/12) | MEROITIC CURSIVE FRACTION FIVE TWELFTHS
  U+109FB |         𐧻 |         (1/2) | MEROITIC CURSIVE FRACTION SIX TWELFTHS
  U+109FC |         𐧼 |        (7/12) | MEROITIC CURSIVE FRACTION SEVEN TWELFTHS
  U+109FD |         𐧽 |         (2/3) | MEROITIC CURSIVE FRACTION EIGHT TWELFTHS
  U+109FE |         𐧾 |         (3/4) | MEROITIC CURSIVE FRACTION NINE TWELFTHS
  U+109FF |         𐧿 |         (5/6) | MEROITIC CURSIVE FRACTION TEN TWELFTHS
  U+10A40 |         𐩀 |             1 | KHAROSHTHI DIGIT ONE
  U+10A41 |         𐩁 |             2 | KHAROSHTHI DIGIT TWO
  U+10A42 |         𐩂 |             3 | KHAROSHTHI DIGIT THREE
  U+10A43 |         𐩃 |             4 | KHAROSHTHI DIGIT FOUR
  U+10A44 |         𐩄 |            10 | KHAROSHTHI NUMBER TEN
  U+10A45 |         𐩅 |            20 | KHAROSHTHI NUMBER TWENTY
  U+10A46 |         𐩆 |           100 | KHAROSHTHI NUMBER ONE HUNDRED
  U+10A47 |         𐩇 |          1000 | KHAROSHTHI NUMBER ONE THOUSAND
  U+10A48 |         𐩈 |         (1/2) | KHAROSHTHI FRACTION ONE HALF
  U+10A7D |         𐩽 |             1 | OLD SOUTH ARABIAN NUMBER ONE
  U+10A7E |         𐩾 |            50 | OLD SOUTH ARABIAN NUMBER FIFTY
  U+10A9D |         𐪝 |             1 | OLD NORTH ARABIAN NUMBER ONE
  U+10A9E |         𐪞 |            10 | OLD NORTH ARABIAN NUMBER TEN
  U+10A9F |         𐪟 |            20 | OLD NORTH ARABIAN NUMBER TWENTY
  U+10AEB |         𐫫 |             1 | MANICHAEAN NUMBER ONE
  U+10AEC |         𐫬 |             5 | MANICHAEAN NUMBER FIVE
  U+10AED |         𐫭 |            10 | MANICHAEAN NUMBER TEN
  U+10AEE |         𐫮 |            20 | MANICHAEAN NUMBER TWENTY
  U+10AEF |         𐫯 |           100 | MANICHAEAN NUMBER ONE HUNDRED
  U+10B58 |         𐭘 |             1 | INSCRIPTIONAL PARTHIAN NUMBER ONE
  U+10B59 |         𐭙 |             2 | INSCRIPTIONAL PARTHIAN NUMBER TWO
  U+10B5A |         𐭚 |             3 | INSCRIPTIONAL PARTHIAN NUMBER THREE
  U+10B5B |         𐭛 |             4 | INSCRIPTIONAL PARTHIAN NUMBER FOUR
  U+10B5C |         𐭜 |            10 | INSCRIPTIONAL PARTHIAN NUMBER TEN
  U+10B5D |         𐭝 |            20 | INSCRIPTIONAL PARTHIAN NUMBER TWENTY
  U+10B5E |         𐭞 |           100 | INSCRIPTIONAL PARTHIAN NUMBER ONE HUNDRED
  U+10B5F |         𐭟 |          1000 | INSCRIPTIONAL PARTHIAN NUMBER ONE THOUSAND
  U+10B78 |         𐭸 |             1 | INSCRIPTIONAL PAHLAVI NUMBER ONE
  U+10B79 |         𐭹 |             2 | INSCRIPTIONAL PAHLAVI NUMBER TWO
  U+10B7A |         𐭺 |             3 | INSCRIPTIONAL PAHLAVI NUMBER THREE
  U+10B7B |         𐭻 |             4 | INSCRIPTIONAL PAHLAVI NUMBER FOUR
  U+10B7C |         𐭼 |            10 | INSCRIPTIONAL PAHLAVI NUMBER TEN
  U+10B7D |         𐭽 |            20 | INSCRIPTIONAL PAHLAVI NUMBER TWENTY
  U+10B7E |         𐭾 |           100 | INSCRIPTIONAL PAHLAVI NUMBER ONE HUNDRED
  U+10B7F |         𐭿 |          1000 | INSCRIPTIONAL PAHLAVI NUMBER ONE THOUSAND
  U+10BA9 |         𐮩 |             1 | PSALTER PAHLAVI NUMBER ONE
  U+10BAA |         𐮪 |             2 | PSALTER PAHLAVI NUMBER TWO
  U+10BAB |         𐮫 |             3 | PSALTER PAHLAVI NUMBER THREE
  U+10BAC |         𐮬 |             4 | PSALTER PAHLAVI NUMBER FOUR
  U+10BAD |         𐮭 |            10 | PSALTER PAHLAVI NUMBER TEN
  U+10BAE |         𐮮 |            20 | PSALTER PAHLAVI NUMBER TWENTY
  U+10BAF |         𐮯 |           100 | PSALTER PAHLAVI NUMBER ONE HUNDRED
  U+10CFA |         𐳺 |             1 | OLD HUNGARIAN NUMBER ONE
  U+10CFB |         𐳻 |             5 | OLD HUNGARIAN NUMBER FIVE
  U+10CFC |         𐳼 |            10 | OLD HUNGARIAN NUMBER TEN
  U+10CFD |         𐳽 |            50 | OLD HUNGARIAN NUMBER FIFTY
  U+10CFE |         𐳾 |           100 | OLD HUNGARIAN NUMBER ONE HUNDRED
  U+10CFF |         𐳿 |          1000 | OLD HUNGARIAN NUMBER ONE THOUSAND
  U+10D30 |         𐴰 |             0 | HANIFI ROHINGYA DIGIT ZERO
  U+10D31 |         𐴱 |             1 | HANIFI ROHINGYA DIGIT ONE
  U+10D32 |         𐴲 |             2 | HANIFI ROHINGYA DIGIT TWO
  U+10D33 |         𐴳 |             3 | HANIFI ROHINGYA DIGIT THREE
  U+10D34 |         𐴴 |             4 | HANIFI ROHINGYA DIGIT FOUR
  U+10D35 |         𐴵 |             5 | HANIFI ROHINGYA DIGIT FIVE
  U+10D36 |         𐴶 |             6 | HANIFI ROHINGYA DIGIT SIX
  U+10D37 |         𐴷 |             7 | HANIFI ROHINGYA DIGIT SEVEN
  U+10D38 |         𐴸 |             8 | HANIFI ROHINGYA DIGIT EIGHT
  U+10D39 |         𐴹 |             9 | HANIFI ROHINGYA DIGIT NINE
  U+10E60 |         𐹠 |             1 | RUMI DIGIT ONE
  U+10E61 |         𐹡 |             2 | RUMI DIGIT TWO
  U+10E62 |         𐹢 |             3 | RUMI DIGIT THREE
  U+10E63 |         𐹣 |             4 | RUMI DIGIT FOUR
  U+10E64 |         𐹤 |             5 | RUMI DIGIT FIVE
  U+10E65 |         𐹥 |             6 | RUMI DIGIT SIX
  U+10E66 |         𐹦 |             7 | RUMI DIGIT SEVEN
  U+10E67 |         𐹧 |             8 | RUMI DIGIT EIGHT
  U+10E68 |         𐹨 |             9 | RUMI DIGIT NINE
  U+10E69 |         𐹩 |            10 | RUMI NUMBER TEN
  U+10E6A |         𐹪 |            20 | RUMI NUMBER TWENTY
  U+10E6B |         𐹫 |            30 | RUMI NUMBER THIRTY
  U+10E6C |         𐹬 |            40 | RUMI NUMBER FORTY
  U+10E6D |         𐹭 |            50 | RUMI NUMBER FIFTY
  U+10E6E |         𐹮 |            60 | RUMI NUMBER SIXTY
  U+10E6F |         𐹯 |            70 | RUMI NUMBER SEVENTY
  U+10E70 |         𐹰 |            80 | RUMI NUMBER EIGHTY
  U+10E71 |         𐹱 |            90 | RUMI NUMBER NINETY
  U+10E72 |         𐹲 |           100 | RUMI NUMBER ONE HUNDRED
  U+10E73 |         𐹳 |           200 | RUMI NUMBER TWO HUNDRED
  U+10E74 |         𐹴 |           300 | RUMI NUMBER THREE HUNDRED
  U+10E75 |         𐹵 |           400 | RUMI NUMBER FOUR HUNDRED
  U+10E76 |         𐹶 |           500 | RUMI NUMBER FIVE HUNDRED
  U+10E77 |         𐹷 |           600 | RUMI NUMBER SIX HUNDRED
  U+10E78 |         𐹸 |           700 | RUMI NUMBER SEVEN HUNDRED
  U+10E79 |         𐹹 |           800 | RUMI NUMBER EIGHT HUNDRED
  U+10E7A |         𐹺 |           900 | RUMI NUMBER NINE HUNDRED
  U+10E7B |         𐹻 |         (1/2) | RUMI FRACTION ONE HALF
  U+10E7C |         𐹼 |         (1/4) | RUMI FRACTION ONE QUARTER
  U+10E7D |         𐹽 |         (1/3) | RUMI FRACTION ONE THIRD
  U+10E7E |         𐹾 |         (2/3) | RUMI FRACTION TWO THIRDS
  U+10F1D |         𐼝 |             1 | OLD SOGDIAN NUMBER ONE
  U+10F1E |         𐼞 |             2 | OLD SOGDIAN NUMBER TWO
  U+10F1F |         𐼟 |             3 | OLD SOGDIAN NUMBER THREE
  U+10F20 |         𐼠 |             4 | OLD SOGDIAN NUMBER FOUR
  U+10F21 |         𐼡 |             5 | OLD SOGDIAN NUMBER FIVE
  U+10F22 |         𐼢 |            10 | OLD SOGDIAN NUMBER TEN
  U+10F23 |         𐼣 |            20 | OLD SOGDIAN NUMBER TWENTY
  U+10F24 |         𐼤 |            30 | OLD SOGDIAN NUMBER THIRTY
  U+10F25 |         𐼥 |           100 | OLD SOGDIAN NUMBER ONE HUNDRED
  U+10F26 |         𐼦 |         (1/2) | OLD SOGDIAN FRACTION ONE HALF
  U+10F51 |         𐽑 |             1 | SOGDIAN NUMBER ONE
  U+10F52 |         𐽒 |            10 | SOGDIAN NUMBER TEN
  U+10F53 |         𐽓 |            20 | SOGDIAN NUMBER TWENTY
  U+10F54 |         𐽔 |           100 | SOGDIAN NUMBER ONE HUNDRED
  U+11052 |         𑁒 |             1 | BRAHMI NUMBER ONE
  U+11053 |         𑁓 |             2 | BRAHMI NUMBER TWO
  U+11054 |         𑁔 |             3 | BRAHMI NUMBER THREE
  U+11055 |         𑁕 |             4 | BRAHMI NUMBER FOUR
  U+11056 |         𑁖 |             5 | BRAHMI NUMBER FIVE
  U+11057 |         𑁗 |             6 | BRAHMI NUMBER SIX
  U+11058 |         𑁘 |             7 | BRAHMI NUMBER SEVEN
  U+11059 |         𑁙 |             8 | BRAHMI NUMBER EIGHT
  U+1105A |         𑁚 |             9 | BRAHMI NUMBER NINE
  U+1105B |         𑁛 |            10 | BRAHMI NUMBER TEN
  U+1105C |         𑁜 |            20 | BRAHMI NUMBER TWENTY
  U+1105D |         𑁝 |            30 | BRAHMI NUMBER THIRTY
  U+1105E |         𑁞 |            40 | BRAHMI NUMBER FORTY
  U+1105F |         𑁟 |            50 | BRAHMI NUMBER FIFTY
  U+11060 |         𑁠 |            60 | BRAHMI NUMBER SIXTY
  U+11061 |         𑁡 |            70 | BRAHMI NUMBER SEVENTY
  U+11062 |         𑁢 |            80 | BRAHMI NUMBER EIGHTY
  U+11063 |         𑁣 |            90 | BRAHMI NUMBER NINETY
  U+11064 |         𑁤 |           100 | BRAHMI NUMBER ONE HUNDRED
  U+11065 |         𑁥 |          1000 | BRAHMI NUMBER ONE THOUSAND
  U+11066 |         𑁦 |             0 | BRAHMI DIGIT ZERO
  U+11067 |         𑁧 |             1 | BRAHMI DIGIT ONE
  U+11068 |         𑁨 |             2 | BRAHMI DIGIT TWO
  U+11069 |         𑁩 |             3 | BRAHMI DIGIT THREE
  U+1106A |         𑁪 |             4 | BRAHMI DIGIT FOUR
  U+1106B |         𑁫 |             5 | BRAHMI DIGIT FIVE
  U+1106C |         𑁬 |             6 | BRAHMI DIGIT SIX
  U+1106D |         𑁭 |             7 | BRAHMI DIGIT SEVEN
  U+1106E |         𑁮 |             8 | BRAHMI DIGIT EIGHT
  U+1106F |         𑁯 |             9 | BRAHMI DIGIT NINE
  U+110F0 |         𑃰 |             0 | SORA SOMPENG DIGIT ZERO
  U+110F1 |         𑃱 |             1 | SORA SOMPENG DIGIT ONE
  U+110F2 |         𑃲 |             2 | SORA SOMPENG DIGIT TWO
  U+110F3 |         𑃳 |             3 | SORA SOMPENG DIGIT THREE
  U+110F4 |         𑃴 |             4 | SORA SOMPENG DIGIT FOUR
  U+110F5 |         𑃵 |             5 | SORA SOMPENG DIGIT FIVE
  U+110F6 |         𑃶 |             6 | SORA SOMPENG DIGIT SIX
  U+110F7 |         𑃷 |             7 | SORA SOMPENG DIGIT SEVEN
  U+110F8 |         𑃸 |             8 | SORA SOMPENG DIGIT EIGHT
  U+110F9 |         𑃹 |             9 | SORA SOMPENG DIGIT NINE
  U+11136 |         𑄶 |             0 | CHAKMA DIGIT ZERO
  U+11137 |         𑄷 |             1 | CHAKMA DIGIT ONE
  U+11138 |         𑄸 |             2 | CHAKMA DIGIT TWO
  U+11139 |         𑄹 |             3 | CHAKMA DIGIT THREE
  U+1113A |         𑄺 |             4 | CHAKMA DIGIT FOUR
  U+1113B |         𑄻 |             5 | CHAKMA DIGIT FIVE
  U+1113C |         𑄼 |             6 | CHAKMA DIGIT SIX
  U+1113D |         𑄽 |             7 | CHAKMA DIGIT SEVEN
  U+1113E |         𑄾 |             8 | CHAKMA DIGIT EIGHT
  U+1113F |         𑄿 |             9 | CHAKMA DIGIT NINE
  U+111D0 |         𑇐 |             0 | SHARADA DIGIT ZERO
  U+111D1 |         𑇑 |             1 | SHARADA DIGIT ONE
  U+111D2 |         𑇒 |             2 | SHARADA DIGIT TWO
  U+111D3 |         𑇓 |             3 | SHARADA DIGIT THREE
  U+111D4 |         𑇔 |             4 | SHARADA DIGIT FOUR
  U+111D5 |         𑇕 |             5 | SHARADA DIGIT FIVE
  U+111D6 |         𑇖 |             6 | SHARADA DIGIT SIX
  U+111D7 |         𑇗 |             7 | SHARADA DIGIT SEVEN
  U+111D8 |         𑇘 |             8 | SHARADA DIGIT EIGHT
  U+111D9 |         𑇙 |             9 | SHARADA DIGIT NINE
  U+111E1 |         𑇡 |             1 | SINHALA ARCHAIC DIGIT ONE
  U+111E2 |         𑇢 |             2 | SINHALA ARCHAIC DIGIT TWO
  U+111E3 |         𑇣 |             3 | SINHALA ARCHAIC DIGIT THREE
  U+111E4 |         𑇤 |             4 | SINHALA ARCHAIC DIGIT FOUR
  U+111E5 |         𑇥 |             5 | SINHALA ARCHAIC DIGIT FIVE
  U+111E6 |         𑇦 |             6 | SINHALA ARCHAIC DIGIT SIX
  U+111E7 |         𑇧 |             7 | SINHALA ARCHAIC DIGIT SEVEN
  U+111E8 |         𑇨 |             8 | SINHALA ARCHAIC DIGIT EIGHT
  U+111E9 |         𑇩 |             9 | SINHALA ARCHAIC DIGIT NINE
  U+111EA |         𑇪 |            10 | SINHALA ARCHAIC NUMBER TEN
  U+111EB |         𑇫 |            20 | SINHALA ARCHAIC NUMBER TWENTY
  U+111EC |         𑇬 |            30 | SINHALA ARCHAIC NUMBER THIRTY
  U+111ED |         𑇭 |            40 | SINHALA ARCHAIC NUMBER FORTY
  U+111EE |         𑇮 |            50 | SINHALA ARCHAIC NUMBER FIFTY
  U+111EF |         𑇯 |            60 | SINHALA ARCHAIC NUMBER SIXTY
  U+111F0 |         𑇰 |            70 | SINHALA ARCHAIC NUMBER SEVENTY
  U+111F1 |         𑇱 |            80 | SINHALA ARCHAIC NUMBER EIGHTY
  U+111F2 |         𑇲 |            90 | SINHALA ARCHAIC NUMBER NINETY
  U+111F3 |         𑇳 |           100 | SINHALA ARCHAIC NUMBER ONE HUNDRED
  U+111F4 |         𑇴 |          1000 | SINHALA ARCHAIC NUMBER ONE THOUSAND
  U+112F0 |         𑋰 |             0 | KHUDAWADI DIGIT ZERO
  U+112F1 |         𑋱 |             1 | KHUDAWADI DIGIT ONE
  U+112F2 |         𑋲 |             2 | KHUDAWADI DIGIT TWO
  U+112F3 |         𑋳 |             3 | KHUDAWADI DIGIT THREE
  U+112F4 |         𑋴 |             4 | KHUDAWADI DIGIT FOUR
  U+112F5 |         𑋵 |             5 | KHUDAWADI DIGIT FIVE
  U+112F6 |         𑋶 |             6 | KHUDAWADI DIGIT SIX
  U+112F7 |         𑋷 |             7 | KHUDAWADI DIGIT SEVEN
  U+112F8 |         𑋸 |             8 | KHUDAWADI DIGIT EIGHT
  U+112F9 |         𑋹 |             9 | KHUDAWADI DIGIT NINE
  U+11450 |         𑑐 |             0 | NEWA DIGIT ZERO
  U+11451 |         𑑑 |             1 | NEWA DIGIT ONE
  U+11452 |         𑑒 |             2 | NEWA DIGIT TWO
  U+11453 |         𑑓 |             3 | NEWA DIGIT THREE
  U+11454 |         𑑔 |             4 | NEWA DIGIT FOUR
  U+11455 |         𑑕 |             5 | NEWA DIGIT FIVE
  U+11456 |         𑑖 |             6 | NEWA DIGIT SIX
  U+11457 |         𑑗 |             7 | NEWA DIGIT SEVEN
  U+11458 |         𑑘 |             8 | NEWA DIGIT EIGHT
  U+11459 |         𑑙 |             9 | NEWA DIGIT NINE
  U+114D0 |         𑓐 |             0 | TIRHUTA DIGIT ZERO
  U+114D1 |         𑓑 |             1 | TIRHUTA DIGIT ONE
  U+114D2 |         𑓒 |             2 | TIRHUTA DIGIT TWO
  U+114D3 |         𑓓 |             3 | TIRHUTA DIGIT THREE
  U+114D4 |         𑓔 |             4 | TIRHUTA DIGIT FOUR
  U+114D5 |         𑓕 |             5 | TIRHUTA DIGIT FIVE
  U+114D6 |         𑓖 |             6 | TIRHUTA DIGIT SIX
  U+114D7 |         𑓗 |             7 | TIRHUTA DIGIT SEVEN
  U+114D8 |         𑓘 |             8 | TIRHUTA DIGIT EIGHT
  U+114D9 |         𑓙 |             9 | TIRHUTA DIGIT NINE
  U+11650 |         𑙐 |             0 | MODI DIGIT ZERO
  U+11651 |         𑙑 |             1 | MODI DIGIT ONE
  U+11652 |         𑙒 |             2 | MODI DIGIT TWO
  U+11653 |         𑙓 |             3 | MODI DIGIT THREE
  U+11654 |         𑙔 |             4 | MODI DIGIT FOUR
  U+11655 |         𑙕 |             5 | MODI DIGIT FIVE
  U+11656 |         𑙖 |             6 | MODI DIGIT SIX
  U+11657 |         𑙗 |             7 | MODI DIGIT SEVEN
  U+11658 |         𑙘 |             8 | MODI DIGIT EIGHT
  U+11659 |         𑙙 |             9 | MODI DIGIT NINE
  U+116C0 |         𑛀 |             0 | TAKRI DIGIT ZERO
  U+116C1 |         𑛁 |             1 | TAKRI DIGIT ONE
  U+116C2 |         𑛂 |             2 | TAKRI DIGIT TWO
  U+116C3 |         𑛃 |             3 | TAKRI DIGIT THREE
  U+116C4 |         𑛄 |             4 | TAKRI DIGIT FOUR
  U+116C5 |         𑛅 |             5 | TAKRI DIGIT FIVE
  U+116C6 |         𑛆 |             6 | TAKRI DIGIT SIX
  U+116C7 |         𑛇 |             7 | TAKRI DIGIT SEVEN
  U+116C8 |         𑛈 |             8 | TAKRI DIGIT EIGHT
  U+116C9 |         𑛉 |             9 | TAKRI DIGIT NINE
  U+11730 |         𑜰 |             0 | AHOM DIGIT ZERO
  U+11731 |         𑜱 |             1 | AHOM DIGIT ONE
  U+11732 |         𑜲 |             2 | AHOM DIGIT TWO
  U+11733 |         𑜳 |             3 | AHOM DIGIT THREE
  U+11734 |         𑜴 |             4 | AHOM DIGIT FOUR
  U+11735 |         𑜵 |             5 | AHOM DIGIT FIVE
  U+11736 |         𑜶 |             6 | AHOM DIGIT SIX
  U+11737 |         𑜷 |             7 | AHOM DIGIT SEVEN
  U+11738 |         𑜸 |             8 | AHOM DIGIT EIGHT
  U+11739 |         𑜹 |             9 | AHOM DIGIT NINE
  U+1173A |         𑜺 |            10 | AHOM NUMBER TEN
  U+1173B |         𑜻 |            20 | AHOM NUMBER TWENTY
  U+118E0 |         𑣠 |             0 | WARANG CITI DIGIT ZERO
  U+118E1 |         𑣡 |             1 | WARANG CITI DIGIT ONE
  U+118E2 |         𑣢 |             2 | WARANG CITI DIGIT TWO
  U+118E3 |         𑣣 |             3 | WARANG CITI DIGIT THREE
  U+118E4 |         𑣤 |             4 | WARANG CITI DIGIT FOUR
  U+118E5 |         𑣥 |             5 | WARANG CITI DIGIT FIVE
  U+118E6 |         𑣦 |             6 | WARANG CITI DIGIT SIX
  U+118E7 |         𑣧 |             7 | WARANG CITI DIGIT SEVEN
  U+118E8 |         𑣨 |             8 | WARANG CITI DIGIT EIGHT
  U+118E9 |         𑣩 |             9 | WARANG CITI DIGIT NINE
  U+118EA |         𑣪 |            10 | WARANG CITI NUMBER TEN
  U+118EB |         𑣫 |            20 | WARANG CITI NUMBER TWENTY
  U+118EC |         𑣬 |            30 | WARANG CITI NUMBER THIRTY
  U+118ED |         𑣭 |            40 | WARANG CITI NUMBER FORTY
  U+118EE |         𑣮 |            50 | WARANG CITI NUMBER FIFTY
  U+118EF |         𑣯 |            60 | WARANG CITI NUMBER SIXTY
  U+118F0 |         𑣰 |            70 | WARANG CITI NUMBER SEVENTY
  U+118F1 |         𑣱 |            80 | WARANG CITI NUMBER EIGHTY
  U+118F2 |         𑣲 |            90 | WARANG CITI NUMBER NINETY
  U+11C50 |         𑱐 |             0 | BHAIKSUKI DIGIT ZERO
  U+11C51 |         𑱑 |             1 | BHAIKSUKI DIGIT ONE
  U+11C52 |         𑱒 |             2 | BHAIKSUKI DIGIT TWO
  U+11C53 |         𑱓 |             3 | BHAIKSUKI DIGIT THREE
  U+11C54 |         𑱔 |             4 | BHAIKSUKI DIGIT FOUR
  U+11C55 |         𑱕 |             5 | BHAIKSUKI DIGIT FIVE
  U+11C56 |         𑱖 |             6 | BHAIKSUKI DIGIT SIX
  U+11C57 |         𑱗 |             7 | BHAIKSUKI DIGIT SEVEN
  U+11C58 |         𑱘 |             8 | BHAIKSUKI DIGIT EIGHT
  U+11C59 |         𑱙 |             9 | BHAIKSUKI DIGIT NINE
  U+11C5A |         𑱚 |             1 | BHAIKSUKI NUMBER ONE
  U+11C5B |         𑱛 |             2 | BHAIKSUKI NUMBER TWO
  U+11C5C |         𑱜 |             3 | BHAIKSUKI NUMBER THREE
  U+11C5D |         𑱝 |             4 | BHAIKSUKI NUMBER FOUR
  U+11C5E |         𑱞 |             5 | BHAIKSUKI NUMBER FIVE
  U+11C5F |         𑱟 |             6 | BHAIKSUKI NUMBER SIX
  U+11C60 |         𑱠 |             7 | BHAIKSUKI NUMBER SEVEN
  U+11C61 |         𑱡 |             8 | BHAIKSUKI NUMBER EIGHT
  U+11C62 |         𑱢 |             9 | BHAIKSUKI NUMBER NINE
  U+11C63 |         𑱣 |            10 | BHAIKSUKI NUMBER TEN
  U+11C64 |         𑱤 |            20 | BHAIKSUKI NUMBER TWENTY
  U+11C65 |         𑱥 |            30 | BHAIKSUKI NUMBER THIRTY
  U+11C66 |         𑱦 |            40 | BHAIKSUKI NUMBER FORTY
  U+11C67 |         𑱧 |            50 | BHAIKSUKI NUMBER FIFTY
  U+11C68 |         𑱨 |            60 | BHAIKSUKI NUMBER SIXTY
  U+11C69 |         𑱩 |            70 | BHAIKSUKI NUMBER SEVENTY
  U+11C6A |         𑱪 |            80 | BHAIKSUKI NUMBER EIGHTY
  U+11C6B |         𑱫 |            90 | BHAIKSUKI NUMBER NINETY
  U+11C6C |         𑱬 |           100 | BHAIKSUKI HUNDREDS UNIT MARK
  U+11D50 |         𑵐 |             0 | MASARAM GONDI DIGIT ZERO
  U+11D51 |         𑵑 |             1 | MASARAM GONDI DIGIT ONE
  U+11D52 |         𑵒 |             2 | MASARAM GONDI DIGIT TWO
  U+11D53 |         𑵓 |             3 | MASARAM GONDI DIGIT THREE
  U+11D54 |         𑵔 |             4 | MASARAM GONDI DIGIT FOUR
  U+11D55 |         𑵕 |             5 | MASARAM GONDI DIGIT FIVE
  U+11D56 |         𑵖 |             6 | MASARAM GONDI DIGIT SIX
  U+11D57 |         𑵗 |             7 | MASARAM GONDI DIGIT SEVEN
  U+11D58 |         𑵘 |             8 | MASARAM GONDI DIGIT EIGHT
  U+11D59 |         𑵙 |             9 | MASARAM GONDI DIGIT NINE
  U+11DA0 |         𑶠 |             0 | GUNJALA GONDI DIGIT ZERO
  U+11DA1 |         𑶡 |             1 | GUNJALA GONDI DIGIT ONE
  U+11DA2 |         𑶢 |             2 | GUNJALA GONDI DIGIT TWO
  U+11DA3 |         𑶣 |             3 | GUNJALA GONDI DIGIT THREE
  U+11DA4 |         𑶤 |             4 | GUNJALA GONDI DIGIT FOUR
  U+11DA5 |         𑶥 |             5 | GUNJALA GONDI DIGIT FIVE
  U+11DA6 |         𑶦 |             6 | GUNJALA GONDI DIGIT SIX
  U+11DA7 |         𑶧 |             7 | GUNJALA GONDI DIGIT SEVEN
  U+11DA8 |         𑶨 |             8 | GUNJALA GONDI DIGIT EIGHT
  U+11DA9 |         𑶩 |             9 | GUNJALA GONDI DIGIT NINE
  U+11FC0 |         𑿀 |       (1/320) | TAMIL FRACTION ONE THREE-HUNDRED-AND-TWENTIETH
  U+11FC1 |         𑿁 |       (1/160) | TAMIL FRACTION ONE ONE-HUNDRED-AND-SIXTIETH
  U+11FC2 |         𑿂 |        (1/80) | TAMIL FRACTION ONE EIGHTIETH
  U+11FC3 |         𑿃 |        (1/64) | TAMIL FRACTION ONE SIXTY-FOURTH
  U+11FC4 |         𑿄 |        (1/40) | TAMIL FRACTION ONE FORTIETH
  U+11FC5 |         𑿅 |        (1/32) | TAMIL FRACTION ONE THIRTY-SECOND
  U+11FC6 |         𑿆 |        (3/80) | TAMIL FRACTION THREE EIGHTIETHS
  U+11FC7 |         𑿇 |        (3/64) | TAMIL FRACTION THREE SIXTY-FOURTHS
  U+11FC8 |         𑿈 |        (1/20) | TAMIL FRACTION ONE TWENTIETH
  U+11FC9 |         𑿉 |        (1/16) | TAMIL FRACTION ONE SIXTEENTH-1
  U+11FCA |         𑿊 |        (1/16) | TAMIL FRACTION ONE SIXTEENTH-2
  U+11FCB |         𑿋 |        (1/10) | TAMIL FRACTION ONE TENTH
  U+11FCC |         𑿌 |         (1/8) | TAMIL FRACTION ONE EIGHTH
  U+11FCD |         𑿍 |        (3/20) | TAMIL FRACTION THREE TWENTIETHS
  U+11FCE |         𑿎 |        (3/16) | TAMIL FRACTION THREE SIXTEENTHS
  U+11FCF |         𑿏 |         (1/5) | TAMIL FRACTION ONE FIFTH
  U+11FD0 |         𑿐 |         (1/4) | TAMIL FRACTION ONE QUARTER
  U+11FD1 |         𑿑 |         (1/2) | TAMIL FRACTION ONE HALF-1
  U+11FD2 |         𑿒 |         (1/2) | TAMIL FRACTION ONE HALF-2
  U+11FD3 |         𑿓 |         (3/4) | TAMIL FRACTION THREE QUARTERS
  U+11FD4 |         𑿔 |       (1/320) | TAMIL FRACTION DOWNSCALING FACTOR KIIZH
  U+12400 |         𒐀 |             2 | CUNEIFORM NUMERIC SIGN TWO ASH
  U+12401 |         𒐁 |             3 | CUNEIFORM NUMERIC SIGN THREE ASH
  U+12402 |         𒐂 |             4 | CUNEIFORM NUMERIC SIGN FOUR ASH
  U+12403 |         𒐃 |             5 | CUNEIFORM NUMERIC SIGN FIVE ASH
  U+12404 |         𒐄 |             6 | CUNEIFORM NUMERIC SIGN SIX ASH
  U+12405 |         𒐅 |             7 | CUNEIFORM NUMERIC SIGN SEVEN ASH
  U+12406 |         𒐆 |             8 | CUNEIFORM NUMERIC SIGN EIGHT ASH
  U+12407 |         𒐇 |             9 | CUNEIFORM NUMERIC SIGN NINE ASH
  U+12408 |         𒐈 |             3 | CUNEIFORM NUMERIC SIGN THREE DISH
  U+12409 |         𒐉 |             4 | CUNEIFORM NUMERIC SIGN FOUR DISH
  U+1240A |         𒐊 |             5 | CUNEIFORM NUMERIC SIGN FIVE DISH
  U+1240B |         𒐋 |             6 | CUNEIFORM NUMERIC SIGN SIX DISH
  U+1240C |         𒐌 |             7 | CUNEIFORM NUMERIC SIGN SEVEN DISH
  U+1240D |         𒐍 |             8 | CUNEIFORM NUMERIC SIGN EIGHT DISH
  U+1240E |         𒐎 |             9 | CUNEIFORM NUMERIC SIGN NINE DISH
  U+1240F |         𒐏 |             4 | CUNEIFORM NUMERIC SIGN FOUR U
  U+12410 |         𒐐 |             5 | CUNEIFORM NUMERIC SIGN FIVE U
  U+12411 |         𒐑 |             6 | CUNEIFORM NUMERIC SIGN SIX U
  U+12412 |         𒐒 |             7 | CUNEIFORM NUMERIC SIGN SEVEN U
  U+12413 |         𒐓 |             8 | CUNEIFORM NUMERIC SIGN EIGHT U
  U+12414 |         𒐔 |             9 | CUNEIFORM NUMERIC SIGN NINE U
  U+12415 |         𒐕 |             1 | CUNEIFORM NUMERIC SIGN ONE GESH2
  U+12416 |         𒐖 |             2 | CUNEIFORM NUMERIC SIGN TWO GESH2
  U+12417 |         𒐗 |             3 | CUNEIFORM NUMERIC SIGN THREE GESH2
  U+12418 |         𒐘 |             4 | CUNEIFORM NUMERIC SIGN FOUR GESH2
  U+12419 |         𒐙 |             5 | CUNEIFORM NUMERIC SIGN FIVE GESH2
  U+1241A |         𒐚 |             6 | CUNEIFORM NUMERIC SIGN SIX GESH2
  U+1241B |         𒐛 |             7 | CUNEIFORM NUMERIC SIGN SEVEN GESH2
  U+1241C |         𒐜 |             8 | CUNEIFORM NUMERIC SIGN EIGHT GESH2
  U+1241D |         𒐝 |             9 | CUNEIFORM NUMERIC SIGN NINE GESH2
  U+1241E |         𒐞 |             1 | CUNEIFORM NUMERIC SIGN ONE GESHU
  U+1241F |         𒐟 |             2 | CUNEIFORM NUMERIC SIGN TWO GESHU
  U+12420 |         𒐠 |             3 | CUNEIFORM NUMERIC SIGN THREE GESHU
  U+12421 |         𒐡 |             4 | CUNEIFORM NUMERIC SIGN FOUR GESHU
  U+12422 |         𒐢 |             5 | CUNEIFORM NUMERIC SIGN FIVE GESHU
  U+12423 |         𒐣 |             2 | CUNEIFORM NUMERIC SIGN TWO SHAR2
  U+12424 |         𒐤 |             3 | CUNEIFORM NUMERIC SIGN THREE SHAR2
  U+12425 |         𒐥 |             3 | CUNEIFORM NUMERIC SIGN THREE SHAR2 VARIANT FORM
  U+12426 |         𒐦 |             4 | CUNEIFORM NUMERIC SIGN FOUR SHAR2
  U+12427 |         𒐧 |             5 | CUNEIFORM NUMERIC SIGN FIVE SHAR2
  U+12428 |         𒐨 |             6 | CUNEIFORM NUMERIC SIGN SIX SHAR2
  U+12429 |         𒐩 |             7 | CUNEIFORM NUMERIC SIGN SEVEN SHAR2
  U+1242A |         𒐪 |             8 | CUNEIFORM NUMERIC SIGN EIGHT SHAR2
  U+1242B |         𒐫 |             9 | CUNEIFORM NUMERIC SIGN NINE SHAR2
  U+1242C |         𒐬 |             1 | CUNEIFORM NUMERIC SIGN ONE SHARU
  U+1242D |         𒐭 |             2 | CUNEIFORM NUMERIC SIGN TWO SHARU
  U+1242E |         𒐮 |             3 | CUNEIFORM NUMERIC SIGN THREE SHARU
  U+1242F |         𒐯 |             3 | CUNEIFORM NUMERIC SIGN THREE SHARU VARIANT FORM
  U+12430 |         𒐰 |             4 | CUNEIFORM NUMERIC SIGN FOUR SHARU
  U+12431 |         𒐱 |             5 | CUNEIFORM NUMERIC SIGN FIVE SHARU
  U+12432 |         𒐲 |        216000 | CUNEIFORM NUMERIC SIGN SHAR2 TIMES GAL PLUS DISH
  U+12433 |         𒐳 |        432000 | CUNEIFORM NUMERIC SIGN SHAR2 TIMES GAL PLUS MIN
  U+12434 |         𒐴 |             1 | CUNEIFORM NUMERIC SIGN ONE BURU
  U+12435 |         𒐵 |             2 | CUNEIFORM NUMERIC SIGN TWO BURU
  U+12436 |         𒐶 |             3 | CUNEIFORM NUMERIC SIGN THREE BURU
  U+12437 |         𒐷 |             3 | CUNEIFORM NUMERIC SIGN THREE BURU VARIANT FORM
  U+12438 |         𒐸 |             4 | CUNEIFORM NUMERIC SIGN FOUR BURU
  U+12439 |         𒐹 |             5 | CUNEIFORM NUMERIC SIGN FIVE BURU
  U+1243A |         𒐺 |             3 | CUNEIFORM NUMERIC SIGN THREE VARIANT FORM ESH16
  U+1243B |         𒐻 |             3 | CUNEIFORM NUMERIC SIGN THREE VARIANT FORM ESH21
  U+1243C |         𒐼 |             4 | CUNEIFORM NUMERIC SIGN FOUR VARIANT FORM LIMMU
  U+1243D |         𒐽 |             4 | CUNEIFORM NUMERIC SIGN FOUR VARIANT FORM LIMMU4
  U+1243E |         𒐾 |             4 | CUNEIFORM NUMERIC SIGN FOUR VARIANT FORM LIMMU A
  U+1243F |         𒐿 |             4 | CUNEIFORM NUMERIC SIGN FOUR VARIANT FORM LIMMU B
  U+12440 |         𒑀 |             6 | CUNEIFORM NUMERIC SIGN SIX VARIANT FORM ASH9
  U+12441 |         𒑁 |             7 | CUNEIFORM NUMERIC SIGN SEVEN VARIANT FORM IMIN3
  U+12442 |         𒑂 |             7 | CUNEIFORM NUMERIC SIGN SEVEN VARIANT FORM IMIN A
  U+12443 |         𒑃 |             7 | CUNEIFORM NUMERIC SIGN SEVEN VARIANT FORM IMIN B
  U+12444 |         𒑄 |             8 | CUNEIFORM NUMERIC SIGN EIGHT VARIANT FORM USSU
  U+12445 |         𒑅 |             8 | CUNEIFORM NUMERIC SIGN EIGHT VARIANT FORM USSU3
  U+12446 |         𒑆 |             9 | CUNEIFORM NUMERIC SIGN NINE VARIANT FORM ILIMMU
  U+12447 |         𒑇 |             9 | CUNEIFORM NUMERIC SIGN NINE VARIANT FORM ILIMMU3
  U+12448 |         𒑈 |             9 | CUNEIFORM NUMERIC SIGN NINE VARIANT FORM ILIMMU4
  U+12449 |         𒑉 |             9 | CUNEIFORM NUMERIC SIGN NINE VARIANT FORM ILIMMU A
  U+1244A |         𒑊 |             2 | CUNEIFORM NUMERIC SIGN TWO ASH TENU
  U+1244B |         𒑋 |             3 | CUNEIFORM NUMERIC SIGN THREE ASH TENU
  U+1244C |         𒑌 |             4 | CUNEIFORM NUMERIC SIGN FOUR ASH TENU
  U+1244D |         𒑍 |             5 | CUNEIFORM NUMERIC SIGN FIVE ASH TENU
  U+1244E |         𒑎 |             6 | CUNEIFORM NUMERIC SIGN SIX ASH TENU
  U+1244F |         𒑏 |             1 | CUNEIFORM NUMERIC SIGN ONE BAN2
  U+12450 |         𒑐 |             2 | CUNEIFORM NUMERIC SIGN TWO BAN2
  U+12451 |         𒑑 |             3 | CUNEIFORM NUMERIC SIGN THREE BAN2
  U+12452 |         𒑒 |             4 | CUNEIFORM NUMERIC SIGN FOUR BAN2
  U+12453 |         𒑓 |             4 | CUNEIFORM NUMERIC SIGN FOUR BAN2 VARIANT FORM
  U+12454 |         𒑔 |             5 | CUNEIFORM NUMERIC SIGN FIVE BAN2
  U+12455 |         𒑕 |             5 | CUNEIFORM NUMERIC SIGN FIVE BAN2 VARIANT FORM
  U+12456 |         𒑖 |             2 | CUNEIFORM NUMERIC SIGN NIGIDAMIN
  U+12457 |         𒑗 |             3 | CUNEIFORM NUMERIC SIGN NIGIDAESH
  U+12458 |         𒑘 |             1 | CUNEIFORM NUMERIC SIGN ONE ESHE3
  U+12459 |         𒑙 |             2 | CUNEIFORM NUMERIC SIGN TWO ESHE3
  U+1245A |         𒑚 |         (1/3) | CUNEIFORM NUMERIC SIGN ONE THIRD DISH
  U+1245B |         𒑛 |         (2/3) | CUNEIFORM NUMERIC SIGN TWO THIRDS DISH
  U+1245C |         𒑜 |         (5/6) | CUNEIFORM NUMERIC SIGN FIVE SIXTHS DISH
  U+1245D |         𒑝 |         (1/3) | CUNEIFORM NUMERIC SIGN ONE THIRD VARIANT FORM A
  U+1245E |         𒑞 |         (2/3) | CUNEIFORM NUMERIC SIGN TWO THIRDS VARIANT FORM A
  U+1245F |         𒑟 |         (1/8) | CUNEIFORM NUMERIC SIGN ONE EIGHTH ASH
  U+12460 |         𒑠 |         (1/4) | CUNEIFORM NUMERIC SIGN ONE QUARTER ASH
  U+12461 |         𒑡 |         (1/6) | CUNEIFORM NUMERIC SIGN OLD ASSYRIAN ONE SIXTH
  U+12462 |         𒑢 |         (1/4) | CUNEIFORM NUMERIC SIGN OLD ASSYRIAN ONE QUARTER
  U+12463 |         𒑣 |         (1/4) | CUNEIFORM NUMERIC SIGN ONE QUARTER GUR
  U+12464 |         𒑤 |         (1/2) | CUNEIFORM NUMERIC SIGN ONE HALF GUR
  U+12465 |         𒑥 |         (1/3) | CUNEIFORM NUMERIC SIGN ELAMITE ONE THIRD
  U+12466 |         𒑦 |         (2/3) | CUNEIFORM NUMERIC SIGN ELAMITE TWO THIRDS
  U+12467 |         𒑧 |            40 | CUNEIFORM NUMERIC SIGN ELAMITE FORTY
  U+12468 |         𒑨 |            50 | CUNEIFORM NUMERIC SIGN ELAMITE FIFTY
  U+12469 |         𒑩 |             4 | CUNEIFORM NUMERIC SIGN FOUR U VARIANT FORM
  U+1246A |         𒑪 |             5 | CUNEIFORM NUMERIC SIGN FIVE U VARIANT FORM
  U+1246B |         𒑫 |             6 | CUNEIFORM NUMERIC SIGN SIX U VARIANT FORM
  U+1246C |         𒑬 |             7 | CUNEIFORM NUMERIC SIGN SEVEN U VARIANT FORM
  U+1246D |         𒑭 |             8 | CUNEIFORM NUMERIC SIGN EIGHT U VARIANT FORM
  U+1246E |         𒑮 |             9 | CUNEIFORM NUMERIC SIGN NINE U VARIANT FORM
  U+16A60 |         𖩠 |             0 | MRO DIGIT ZERO
  U+16A61 |         𖩡 |             1 | MRO DIGIT ONE
  U+16A62 |         𖩢 |             2 | MRO DIGIT TWO
  U+16A63 |         𖩣 |             3 | MRO DIGIT THREE
  U+16A64 |         𖩤 |             4 | MRO DIGIT FOUR
  U+16A65 |         𖩥 |             5 | MRO DIGIT FIVE
  U+16A66 |         𖩦 |             6 | MRO DIGIT SIX
  U+16A67 |         𖩧 |             7 | MRO DIGIT SEVEN
  U+16A68 |         𖩨 |             8 | MRO DIGIT EIGHT
  U+16A69 |         𖩩 |             9 | MRO DIGIT NINE
  U+16B50 |         𖭐 |             0 | PAHAWH HMONG DIGIT ZERO
  U+16B51 |         𖭑 |             1 | PAHAWH HMONG DIGIT ONE
  U+16B52 |         𖭒 |             2 | PAHAWH HMONG DIGIT TWO
  U+16B53 |         𖭓 |             3 | PAHAWH HMONG DIGIT THREE
  U+16B54 |         𖭔 |             4 | PAHAWH HMONG DIGIT FOUR
  U+16B55 |         𖭕 |             5 | PAHAWH HMONG DIGIT FIVE
  U+16B56 |         𖭖 |             6 | PAHAWH HMONG DIGIT SIX
  U+16B57 |         𖭗 |             7 | PAHAWH HMONG DIGIT SEVEN
  U+16B58 |         𖭘 |             8 | PAHAWH HMONG DIGIT EIGHT
  U+16B59 |         𖭙 |             9 | PAHAWH HMONG DIGIT NINE
  U+16B5B |         𖭛 |            10 | PAHAWH HMONG NUMBER TENS
  U+16B5C |         𖭜 |           100 | PAHAWH HMONG NUMBER HUNDREDS
  U+16B5D |         𖭝 |         10000 | PAHAWH HMONG NUMBER TEN THOUSANDS
  U+16B5E |         𖭞 |       1000000 | PAHAWH HMONG NUMBER MILLIONS
  U+16B5F |         𖭟 |     100000000 | PAHAWH HMONG NUMBER HUNDRED MILLIONS
  U+16B60 |         𖭠 |   10000000000 | PAHAWH HMONG NUMBER TEN BILLIONS
  U+16B61 |         𖭡 | 1000000000000 | PAHAWH HMONG NUMBER TRILLIONS
  U+16E80 |         𖺀 |             0 | MEDEFAIDRIN DIGIT ZERO
  U+16E81 |         𖺁 |             1 | MEDEFAIDRIN DIGIT ONE
  U+16E82 |         𖺂 |             2 | MEDEFAIDRIN DIGIT TWO
  U+16E83 |         𖺃 |             3 | MEDEFAIDRIN DIGIT THREE
  U+16E84 |         𖺄 |             4 | MEDEFAIDRIN DIGIT FOUR
  U+16E85 |         𖺅 |             5 | MEDEFAIDRIN DIGIT FIVE
  U+16E86 |         𖺆 |             6 | MEDEFAIDRIN DIGIT SIX
  U+16E87 |         𖺇 |             7 | MEDEFAIDRIN DIGIT SEVEN
  U+16E88 |         𖺈 |             8 | MEDEFAIDRIN DIGIT EIGHT
  U+16E89 |         𖺉 |             9 | MEDEFAIDRIN DIGIT NINE
  U+16E8A |         𖺊 |            10 | MEDEFAIDRIN NUMBER TEN
  U+16E8B |         𖺋 |            11 | MEDEFAIDRIN NUMBER ELEVEN
  U+16E8C |         𖺌 |            12 | MEDEFAIDRIN NUMBER TWELVE
  U+16E8D |         𖺍 |            13 | MEDEFAIDRIN NUMBER THIRTEEN
  U+16E8E |         𖺎 |            14 | MEDEFAIDRIN NUMBER FOURTEEN
  U+16E8F |         𖺏 |            15 | MEDEFAIDRIN NUMBER FIFTEEN
  U+16E90 |         𖺐 |            16 | MEDEFAIDRIN NUMBER SIXTEEN
  U+16E91 |         𖺑 |            17 | MEDEFAIDRIN NUMBER SEVENTEEN
  U+16E92 |         𖺒 |            18 | MEDEFAIDRIN NUMBER EIGHTEEN
  U+16E93 |         𖺓 |            19 | MEDEFAIDRIN NUMBER NINETEEN
  U+16E94 |         𖺔 |             1 | MEDEFAIDRIN DIGIT ONE ALTERNATE FORM
  U+16E95 |         𖺕 |             2 | MEDEFAIDRIN DIGIT TWO ALTERNATE FORM
  U+16E96 |         𖺖 |             3 | MEDEFAIDRIN DIGIT THREE ALTERNATE FORM
  U+1D2E0 |         𝋠 |             0 | MAYAN NUMERAL ZERO
  U+1D2E1 |         𝋡 |             1 | MAYAN NUMERAL ONE
  U+1D2E2 |         𝋢 |             2 | MAYAN NUMERAL TWO
  U+1D2E3 |         𝋣 |             3 | MAYAN NUMERAL THREE
  U+1D2E4 |         𝋤 |             4 | MAYAN NUMERAL FOUR
  U+1D2E5 |         𝋥 |             5 | MAYAN NUMERAL FIVE
  U+1D2E6 |         𝋦 |             6 | MAYAN NUMERAL SIX
  U+1D2E7 |         𝋧 |             7 | MAYAN NUMERAL SEVEN
  U+1D2E8 |         𝋨 |             8 | MAYAN NUMERAL EIGHT
  U+1D2E9 |         𝋩 |             9 | MAYAN NUMERAL NINE
  U+1D2EA |         𝋪 |            10 | MAYAN NUMERAL TEN
  U+1D2EB |         𝋫 |            11 | MAYAN NUMERAL ELEVEN
  U+1D2EC |         𝋬 |            12 | MAYAN NUMERAL TWELVE
  U+1D2ED |         𝋭 |            13 | MAYAN NUMERAL THIRTEEN
  U+1D2EE |         𝋮 |            14 | MAYAN NUMERAL FOURTEEN
  U+1D2EF |         𝋯 |            15 | MAYAN NUMERAL FIFTEEN
  U+1D2F0 |         𝋰 |            16 | MAYAN NUMERAL SIXTEEN
  U+1D2F1 |         𝋱 |            17 | MAYAN NUMERAL SEVENTEEN
  U+1D2F2 |         𝋲 |            18 | MAYAN NUMERAL EIGHTEEN
  U+1D2F3 |         𝋳 |            19 | MAYAN NUMERAL NINETEEN
  U+1D360 |         𝍠 |             1 | COUNTING ROD UNIT DIGIT ONE
  U+1D361 |         𝍡 |             2 | COUNTING ROD UNIT DIGIT TWO
  U+1D362 |         𝍢 |             3 | COUNTING ROD UNIT DIGIT THREE
  U+1D363 |         𝍣 |             4 | COUNTING ROD UNIT DIGIT FOUR
  U+1D364 |         𝍤 |             5 | COUNTING ROD UNIT DIGIT FIVE
  U+1D365 |         𝍥 |             6 | COUNTING ROD UNIT DIGIT SIX
  U+1D366 |         𝍦 |             7 | COUNTING ROD UNIT DIGIT SEVEN
  U+1D367 |         𝍧 |             8 | COUNTING ROD UNIT DIGIT EIGHT
  U+1D368 |         𝍨 |             9 | COUNTING ROD UNIT DIGIT NINE
  U+1D369 |         𝍩 |            10 | COUNTING ROD TENS DIGIT ONE
  U+1D36A |         𝍪 |            20 | COUNTING ROD TENS DIGIT TWO
  U+1D36B |         𝍫 |            30 | COUNTING ROD TENS DIGIT THREE
  U+1D36C |         𝍬 |            40 | COUNTING ROD TENS DIGIT FOUR
  U+1D36D |         𝍭 |            50 | COUNTING ROD TENS DIGIT FIVE
  U+1D36E |         𝍮 |            60 | COUNTING ROD TENS DIGIT SIX
  U+1D36F |         𝍯 |            70 | COUNTING ROD TENS DIGIT SEVEN
  U+1D370 |         𝍰 |            80 | COUNTING ROD TENS DIGIT EIGHT
  U+1D371 |         𝍱 |            90 | COUNTING ROD TENS DIGIT NINE
  U+1D372 |         𝍲 |             1 | IDEOGRAPHIC TALLY MARK ONE
  U+1D373 |         𝍳 |             2 | IDEOGRAPHIC TALLY MARK TWO
  U+1D374 |         𝍴 |             3 | IDEOGRAPHIC TALLY MARK THREE
  U+1D375 |         𝍵 |             4 | IDEOGRAPHIC TALLY MARK FOUR
  U+1D376 |         𝍶 |             5 | IDEOGRAPHIC TALLY MARK FIVE
  U+1D377 |         𝍷 |             1 | TALLY MARK ONE
  U+1D378 |         𝍸 |             5 | TALLY MARK FIVE
  U+1D7CE |         𝟎 |             0 | MATHEMATICAL BOLD DIGIT ZERO
  U+1D7CF |         𝟏 |             1 | MATHEMATICAL BOLD DIGIT ONE
  U+1D7D0 |         𝟐 |             2 | MATHEMATICAL BOLD DIGIT TWO
  U+1D7D1 |         𝟑 |             3 | MATHEMATICAL BOLD DIGIT THREE
  U+1D7D2 |         𝟒 |             4 | MATHEMATICAL BOLD DIGIT FOUR
  U+1D7D3 |         𝟓 |             5 | MATHEMATICAL BOLD DIGIT FIVE
  U+1D7D4 |         𝟔 |             6 | MATHEMATICAL BOLD DIGIT SIX
  U+1D7D5 |         𝟕 |             7 | MATHEMATICAL BOLD DIGIT SEVEN
  U+1D7D6 |         𝟖 |             8 | MATHEMATICAL BOLD DIGIT EIGHT
  U+1D7D7 |         𝟗 |             9 | MATHEMATICAL BOLD DIGIT NINE
  U+1D7D8 |         𝟘 |             0 | MATHEMATICAL DOUBLE-STRUCK DIGIT ZERO
  U+1D7D9 |         𝟙 |             1 | MATHEMATICAL DOUBLE-STRUCK DIGIT ONE
  U+1D7DA |         𝟚 |             2 | MATHEMATICAL DOUBLE-STRUCK DIGIT TWO
  U+1D7DB |         𝟛 |             3 | MATHEMATICAL DOUBLE-STRUCK DIGIT THREE
  U+1D7DC |         𝟜 |             4 | MATHEMATICAL DOUBLE-STRUCK DIGIT FOUR
  U+1D7DD |         𝟝 |             5 | MATHEMATICAL DOUBLE-STRUCK DIGIT FIVE
  U+1D7DE |         𝟞 |             6 | MATHEMATICAL DOUBLE-STRUCK DIGIT SIX
  U+1D7DF |         𝟟 |             7 | MATHEMATICAL DOUBLE-STRUCK DIGIT SEVEN
  U+1D7E0 |         𝟠 |             8 | MATHEMATICAL DOUBLE-STRUCK DIGIT EIGHT
  U+1D7E1 |         𝟡 |             9 | MATHEMATICAL DOUBLE-STRUCK DIGIT NINE
  U+1D7E2 |         𝟢 |             0 | MATHEMATICAL SANS-SERIF DIGIT ZERO
  U+1D7E3 |         𝟣 |             1 | MATHEMATICAL SANS-SERIF DIGIT ONE
  U+1D7E4 |         𝟤 |             2 | MATHEMATICAL SANS-SERIF DIGIT TWO
  U+1D7E5 |         𝟥 |             3 | MATHEMATICAL SANS-SERIF DIGIT THREE
  U+1D7E6 |         𝟦 |             4 | MATHEMATICAL SANS-SERIF DIGIT FOUR
  U+1D7E7 |         𝟧 |             5 | MATHEMATICAL SANS-SERIF DIGIT FIVE
  U+1D7E8 |         𝟨 |             6 | MATHEMATICAL SANS-SERIF DIGIT SIX
  U+1D7E9 |         𝟩 |             7 | MATHEMATICAL SANS-SERIF DIGIT SEVEN
  U+1D7EA |         𝟪 |             8 | MATHEMATICAL SANS-SERIF DIGIT EIGHT
  U+1D7EB |         𝟫 |             9 | MATHEMATICAL SANS-SERIF DIGIT NINE
  U+1D7EC |         𝟬 |             0 | MATHEMATICAL SANS-SERIF BOLD DIGIT ZERO
  U+1D7ED |         𝟭 |             1 | MATHEMATICAL SANS-SERIF BOLD DIGIT ONE
  U+1D7EE |         𝟮 |             2 | MATHEMATICAL SANS-SERIF BOLD DIGIT TWO
  U+1D7EF |         𝟯 |             3 | MATHEMATICAL SANS-SERIF BOLD DIGIT THREE
  U+1D7F0 |         𝟰 |             4 | MATHEMATICAL SANS-SERIF BOLD DIGIT FOUR
  U+1D7F1 |         𝟱 |             5 | MATHEMATICAL SANS-SERIF BOLD DIGIT FIVE
  U+1D7F2 |         𝟲 |             6 | MATHEMATICAL SANS-SERIF BOLD DIGIT SIX
  U+1D7F3 |         𝟳 |             7 | MATHEMATICAL SANS-SERIF BOLD DIGIT SEVEN
  U+1D7F4 |         𝟴 |             8 | MATHEMATICAL SANS-SERIF BOLD DIGIT EIGHT
  U+1D7F5 |         𝟵 |             9 | MATHEMATICAL SANS-SERIF BOLD DIGIT NINE
  U+1D7F6 |         𝟶 |             0 | MATHEMATICAL MONOSPACE DIGIT ZERO
  U+1D7F7 |         𝟷 |             1 | MATHEMATICAL MONOSPACE DIGIT ONE
  U+1D7F8 |         𝟸 |             2 | MATHEMATICAL MONOSPACE DIGIT TWO
  U+1D7F9 |         𝟹 |             3 | MATHEMATICAL MONOSPACE DIGIT THREE
  U+1D7FA |         𝟺 |             4 | MATHEMATICAL MONOSPACE DIGIT FOUR
  U+1D7FB |         𝟻 |             5 | MATHEMATICAL MONOSPACE DIGIT FIVE
  U+1D7FC |         𝟼 |             6 | MATHEMATICAL MONOSPACE DIGIT SIX
  U+1D7FD |         𝟽 |             7 | MATHEMATICAL MONOSPACE DIGIT SEVEN
  U+1D7FE |         𝟾 |             8 | MATHEMATICAL MONOSPACE DIGIT EIGHT
  U+1D7FF |         𝟿 |             9 | MATHEMATICAL MONOSPACE DIGIT NINE
  U+1E140 |         𞅀 |             0 | NYIAKENG PUACHUE HMONG DIGIT ZERO
  U+1E141 |         𞅁 |             1 | NYIAKENG PUACHUE HMONG DIGIT ONE
  U+1E142 |         𞅂 |             2 | NYIAKENG PUACHUE HMONG DIGIT TWO
  U+1E143 |         𞅃 |             3 | NYIAKENG PUACHUE HMONG DIGIT THREE
  U+1E144 |         𞅄 |             4 | NYIAKENG PUACHUE HMONG DIGIT FOUR
  U+1E145 |         𞅅 |             5 | NYIAKENG PUACHUE HMONG DIGIT FIVE
  U+1E146 |         𞅆 |             6 | NYIAKENG PUACHUE HMONG DIGIT SIX
  U+1E147 |         𞅇 |             7 | NYIAKENG PUACHUE HMONG DIGIT SEVEN
  U+1E148 |         𞅈 |             8 | NYIAKENG PUACHUE HMONG DIGIT EIGHT
  U+1E149 |         𞅉 |             9 | NYIAKENG PUACHUE HMONG DIGIT NINE
  U+1E2F0 |         𞋰 |             0 | WANCHO DIGIT ZERO
  U+1E2F1 |         𞋱 |             1 | WANCHO DIGIT ONE
  U+1E2F2 |         𞋲 |             2 | WANCHO DIGIT TWO
  U+1E2F3 |         𞋳 |             3 | WANCHO DIGIT THREE
  U+1E2F4 |         𞋴 |             4 | WANCHO DIGIT FOUR
  U+1E2F5 |         𞋵 |             5 | WANCHO DIGIT FIVE
  U+1E2F6 |         𞋶 |             6 | WANCHO DIGIT SIX
  U+1E2F7 |         𞋷 |             7 | WANCHO DIGIT SEVEN
  U+1E2F8 |         𞋸 |             8 | WANCHO DIGIT EIGHT
  U+1E2F9 |         𞋹 |             9 | WANCHO DIGIT NINE
  U+1E8C7 |         𞣇 |             1 | MENDE KIKAKUI DIGIT ONE
  U+1E8C8 |         𞣈 |             2 | MENDE KIKAKUI DIGIT TWO
  U+1E8C9 |         𞣉 |             3 | MENDE KIKAKUI DIGIT THREE
  U+1E8CA |         𞣊 |             4 | MENDE KIKAKUI DIGIT FOUR
  U+1E8CB |         𞣋 |             5 | MENDE KIKAKUI DIGIT FIVE
  U+1E8CC |         𞣌 |             6 | MENDE KIKAKUI DIGIT SIX
  U+1E8CD |         𞣍 |             7 | MENDE KIKAKUI DIGIT SEVEN
  U+1E8CE |         𞣎 |             8 | MENDE KIKAKUI DIGIT EIGHT
  U+1E8CF |         𞣏 |             9 | MENDE KIKAKUI DIGIT NINE
  U+1E950 |         𞥐 |             0 | ADLAM DIGIT ZERO
  U+1E951 |         𞥑 |             1 | ADLAM DIGIT ONE
  U+1E952 |         𞥒 |             2 | ADLAM DIGIT TWO
  U+1E953 |         𞥓 |             3 | ADLAM DIGIT THREE
  U+1E954 |         𞥔 |             4 | ADLAM DIGIT FOUR
  U+1E955 |         𞥕 |             5 | ADLAM DIGIT FIVE
  U+1E956 |         𞥖 |             6 | ADLAM DIGIT SIX
  U+1E957 |         𞥗 |             7 | ADLAM DIGIT SEVEN
  U+1E958 |         𞥘 |             8 | ADLAM DIGIT EIGHT
  U+1E959 |         𞥙 |             9 | ADLAM DIGIT NINE
  U+1EC71 |         𞱱 |             1 | INDIC SIYAQ NUMBER ONE
  U+1EC72 |         𞱲 |             2 | INDIC SIYAQ NUMBER TWO
  U+1EC73 |         𞱳 |             3 | INDIC SIYAQ NUMBER THREE
  U+1EC74 |         𞱴 |             4 | INDIC SIYAQ NUMBER FOUR
  U+1EC75 |         𞱵 |             5 | INDIC SIYAQ NUMBER FIVE
  U+1EC76 |         𞱶 |             6 | INDIC SIYAQ NUMBER SIX
  U+1EC77 |         𞱷 |             7 | INDIC SIYAQ NUMBER SEVEN
  U+1EC78 |         𞱸 |             8 | INDIC SIYAQ NUMBER EIGHT
  U+1EC79 |         𞱹 |             9 | INDIC SIYAQ NUMBER NINE
  U+1EC7A |         𞱺 |            10 | INDIC SIYAQ NUMBER TEN
  U+1EC7B |         𞱻 |            20 | INDIC SIYAQ NUMBER TWENTY
  U+1EC7C |         𞱼 |            30 | INDIC SIYAQ NUMBER THIRTY
  U+1EC7D |         𞱽 |            40 | INDIC SIYAQ NUMBER FORTY
  U+1EC7E |         𞱾 |            50 | INDIC SIYAQ NUMBER FIFTY
  U+1EC7F |         𞱿 |            60 | INDIC SIYAQ NUMBER SIXTY
  U+1EC80 |         𞲀 |            70 | INDIC SIYAQ NUMBER SEVENTY
  U+1EC81 |         𞲁 |            80 | INDIC SIYAQ NUMBER EIGHTY
  U+1EC82 |         𞲂 |            90 | INDIC SIYAQ NUMBER NINETY
  U+1EC83 |         𞲃 |           100 | INDIC SIYAQ NUMBER ONE HUNDRED
  U+1EC84 |         𞲄 |           200 | INDIC SIYAQ NUMBER TWO HUNDRED
  U+1EC85 |         𞲅 |           300 | INDIC SIYAQ NUMBER THREE HUNDRED
  U+1EC86 |         𞲆 |           400 | INDIC SIYAQ NUMBER FOUR HUNDRED
  U+1EC87 |         𞲇 |           500 | INDIC SIYAQ NUMBER FIVE HUNDRED
  U+1EC88 |         𞲈 |           600 | INDIC SIYAQ NUMBER SIX HUNDRED
  U+1EC89 |         𞲉 |           700 | INDIC SIYAQ NUMBER SEVEN HUNDRED
  U+1EC8A |         𞲊 |           800 | INDIC SIYAQ NUMBER EIGHT HUNDRED
  U+1EC8B |         𞲋 |           900 | INDIC SIYAQ NUMBER NINE HUNDRED
  U+1EC8C |         𞲌 |          1000 | INDIC SIYAQ NUMBER ONE THOUSAND
  U+1EC8D |         𞲍 |          2000 | INDIC SIYAQ NUMBER TWO THOUSAND
  U+1EC8E |         𞲎 |          3000 | INDIC SIYAQ NUMBER THREE THOUSAND
  U+1EC8F |         𞲏 |          4000 | INDIC SIYAQ NUMBER FOUR THOUSAND
  U+1EC90 |         𞲐 |          5000 | INDIC SIYAQ NUMBER FIVE THOUSAND
  U+1EC91 |         𞲑 |          6000 | INDIC SIYAQ NUMBER SIX THOUSAND
  U+1EC92 |         𞲒 |          7000 | INDIC SIYAQ NUMBER SEVEN THOUSAND
  U+1EC93 |         𞲓 |          8000 | INDIC SIYAQ NUMBER EIGHT THOUSAND
  U+1EC94 |         𞲔 |          9000 | INDIC SIYAQ NUMBER NINE THOUSAND
  U+1EC95 |         𞲕 |         10000 | INDIC SIYAQ NUMBER TEN THOUSAND
  U+1EC96 |         𞲖 |         20000 | INDIC SIYAQ NUMBER TWENTY THOUSAND
  U+1EC97 |         𞲗 |         30000 | INDIC SIYAQ NUMBER THIRTY THOUSAND
  U+1EC98 |         𞲘 |         40000 | INDIC SIYAQ NUMBER FORTY THOUSAND
  U+1EC99 |         𞲙 |         50000 | INDIC SIYAQ NUMBER FIFTY THOUSAND
  U+1EC9A |         𞲚 |         60000 | INDIC SIYAQ NUMBER SIXTY THOUSAND
  U+1EC9B |         𞲛 |         70000 | INDIC SIYAQ NUMBER SEVENTY THOUSAND
  U+1EC9C |         𞲜 |         80000 | INDIC SIYAQ NUMBER EIGHTY THOUSAND
  U+1EC9D |         𞲝 |         90000 | INDIC SIYAQ NUMBER NINETY THOUSAND
  U+1EC9E |         𞲞 |        100000 | INDIC SIYAQ NUMBER LAKH
  U+1EC9F |         𞲟 |        200000 | INDIC SIYAQ NUMBER LAKHAN
  U+1ECA0 |         𞲠 |        100000 | INDIC SIYAQ LAKH MARK
  U+1ECA1 |         𞲡 |      10000000 | INDIC SIYAQ NUMBER KAROR
  U+1ECA2 |         𞲢 |      20000000 | INDIC SIYAQ NUMBER KARORAN
  U+1ECA3 |         𞲣 |             1 | INDIC SIYAQ NUMBER PREFIXED ONE
  U+1ECA4 |         𞲤 |             2 | INDIC SIYAQ NUMBER PREFIXED TWO
  U+1ECA5 |         𞲥 |             3 | INDIC SIYAQ NUMBER PREFIXED THREE
  U+1ECA6 |         𞲦 |             4 | INDIC SIYAQ NUMBER PREFIXED FOUR
  U+1ECA7 |         𞲧 |             5 | INDIC SIYAQ NUMBER PREFIXED FIVE
  U+1ECA8 |         𞲨 |             6 | INDIC SIYAQ NUMBER PREFIXED SIX
  U+1ECA9 |         𞲩 |             7 | INDIC SIYAQ NUMBER PREFIXED SEVEN
  U+1ECAA |         𞲪 |             8 | INDIC SIYAQ NUMBER PREFIXED EIGHT
  U+1ECAB |         𞲫 |             9 | INDIC SIYAQ NUMBER PREFIXED NINE
  U+1ECAD |         𞲭 |         (1/4) | INDIC SIYAQ FRACTION ONE QUARTER
  U+1ECAE |         𞲮 |         (1/2) | INDIC SIYAQ FRACTION ONE HALF
  U+1ECAF |         𞲯 |         (3/4) | INDIC SIYAQ FRACTION THREE QUARTERS
  U+1ECB1 |         𞲱 |             1 | INDIC SIYAQ NUMBER ALTERNATE ONE
  U+1ECB2 |         𞲲 |             2 | INDIC SIYAQ NUMBER ALTERNATE TWO
  U+1ECB3 |         𞲳 |         10000 | INDIC SIYAQ NUMBER ALTERNATE TEN THOUSAND
  U+1ECB4 |         𞲴 |        100000 | INDIC SIYAQ ALTERNATE LAKH MARK
  U+1ED01 |         𞴁 |             1 | OTTOMAN SIYAQ NUMBER ONE
  U+1ED02 |         𞴂 |             2 | OTTOMAN SIYAQ NUMBER TWO
  U+1ED03 |         𞴃 |             3 | OTTOMAN SIYAQ NUMBER THREE
  U+1ED04 |         𞴄 |             4 | OTTOMAN SIYAQ NUMBER FOUR
  U+1ED05 |         𞴅 |             5 | OTTOMAN SIYAQ NUMBER FIVE
  U+1ED06 |         𞴆 |             6 | OTTOMAN SIYAQ NUMBER SIX
  U+1ED07 |         𞴇 |             7 | OTTOMAN SIYAQ NUMBER SEVEN
  U+1ED08 |         𞴈 |             8 | OTTOMAN SIYAQ NUMBER EIGHT
  U+1ED09 |         𞴉 |             9 | OTTOMAN SIYAQ NUMBER NINE
  U+1ED0A |         𞴊 |            10 | OTTOMAN SIYAQ NUMBER TEN
  U+1ED0B |         𞴋 |            20 | OTTOMAN SIYAQ NUMBER TWENTY
  U+1ED0C |         𞴌 |            30 | OTTOMAN SIYAQ NUMBER THIRTY
  U+1ED0D |         𞴍 |            40 | OTTOMAN SIYAQ NUMBER FORTY
  U+1ED0E |         𞴎 |            50 | OTTOMAN SIYAQ NUMBER FIFTY
  U+1ED0F |         𞴏 |            60 | OTTOMAN SIYAQ NUMBER SIXTY
  U+1ED10 |         𞴐 |            70 | OTTOMAN SIYAQ NUMBER SEVENTY
  U+1ED11 |         𞴑 |            80 | OTTOMAN SIYAQ NUMBER EIGHTY
  U+1ED12 |         𞴒 |            90 | OTTOMAN SIYAQ NUMBER NINETY
  U+1ED13 |         𞴓 |           100 | OTTOMAN SIYAQ NUMBER ONE HUNDRED
  U+1ED14 |         𞴔 |           200 | OTTOMAN SIYAQ NUMBER TWO HUNDRED
  U+1ED15 |         𞴕 |           300 | OTTOMAN SIYAQ NUMBER THREE HUNDRED
  U+1ED16 |         𞴖 |           400 | OTTOMAN SIYAQ NUMBER FOUR HUNDRED
  U+1ED17 |         𞴗 |           500 | OTTOMAN SIYAQ NUMBER FIVE HUNDRED
  U+1ED18 |         𞴘 |           600 | OTTOMAN SIYAQ NUMBER SIX HUNDRED
  U+1ED19 |         𞴙 |           700 | OTTOMAN SIYAQ NUMBER SEVEN HUNDRED
  U+1ED1A |         𞴚 |           800 | OTTOMAN SIYAQ NUMBER EIGHT HUNDRED
  U+1ED1B |         𞴛 |           900 | OTTOMAN SIYAQ NUMBER NINE HUNDRED
  U+1ED1C |         𞴜 |          1000 | OTTOMAN SIYAQ NUMBER ONE THOUSAND
  U+1ED1D |         𞴝 |          2000 | OTTOMAN SIYAQ NUMBER TWO THOUSAND
  U+1ED1E |         𞴞 |          3000 | OTTOMAN SIYAQ NUMBER THREE THOUSAND
  U+1ED1F |         𞴟 |          4000 | OTTOMAN SIYAQ NUMBER FOUR THOUSAND
  U+1ED20 |         𞴠 |          5000 | OTTOMAN SIYAQ NUMBER FIVE THOUSAND
  U+1ED21 |         𞴡 |          6000 | OTTOMAN SIYAQ NUMBER SIX THOUSAND
  U+1ED22 |         𞴢 |          7000 | OTTOMAN SIYAQ NUMBER SEVEN THOUSAND
  U+1ED23 |         𞴣 |          8000 | OTTOMAN SIYAQ NUMBER EIGHT THOUSAND
  U+1ED24 |         𞴤 |          9000 | OTTOMAN SIYAQ NUMBER NINE THOUSAND
  U+1ED25 |         𞴥 |         10000 | OTTOMAN SIYAQ NUMBER TEN THOUSAND
  U+1ED26 |         𞴦 |         20000 | OTTOMAN SIYAQ NUMBER TWENTY THOUSAND
  U+1ED27 |         𞴧 |         30000 | OTTOMAN SIYAQ NUMBER THIRTY THOUSAND
  U+1ED28 |         𞴨 |         40000 | OTTOMAN SIYAQ NUMBER FORTY THOUSAND
  U+1ED29 |         𞴩 |         50000 | OTTOMAN SIYAQ NUMBER FIFTY THOUSAND
  U+1ED2A |         𞴪 |         60000 | OTTOMAN SIYAQ NUMBER SIXTY THOUSAND
  U+1ED2B |         𞴫 |         70000 | OTTOMAN SIYAQ NUMBER SEVENTY THOUSAND
  U+1ED2C |         𞴬 |         80000 | OTTOMAN SIYAQ NUMBER EIGHTY THOUSAND
  U+1ED2D |         𞴭 |         90000 | OTTOMAN SIYAQ NUMBER NINETY THOUSAND
  U+1ED2F |         𞴯 |             2 | OTTOMAN SIYAQ ALTERNATE NUMBER TWO
  U+1ED30 |         𞴰 |             3 | OTTOMAN SIYAQ ALTERNATE NUMBER THREE
  U+1ED31 |         𞴱 |             4 | OTTOMAN SIYAQ ALTERNATE NUMBER FOUR
  U+1ED32 |         𞴲 |             5 | OTTOMAN SIYAQ ALTERNATE NUMBER FIVE
  U+1ED33 |         𞴳 |             6 | OTTOMAN SIYAQ ALTERNATE NUMBER SIX
  U+1ED34 |         𞴴 |             7 | OTTOMAN SIYAQ ALTERNATE NUMBER SEVEN
  U+1ED35 |         𞴵 |             8 | OTTOMAN SIYAQ ALTERNATE NUMBER EIGHT
  U+1ED36 |         𞴶 |             9 | OTTOMAN SIYAQ ALTERNATE NUMBER NINE
  U+1ED37 |         𞴷 |            10 | OTTOMAN SIYAQ ALTERNATE NUMBER TEN
  U+1ED38 |         𞴸 |           400 | OTTOMAN SIYAQ ALTERNATE NUMBER FOUR HUNDRED
  U+1ED39 |         𞴹 |           600 | OTTOMAN SIYAQ ALTERNATE NUMBER SIX HUNDRED
  U+1ED3A |         𞴺 |          2000 | OTTOMAN SIYAQ ALTERNATE NUMBER TWO THOUSAND
  U+1ED3B |         𞴻 |         10000 | OTTOMAN SIYAQ ALTERNATE NUMBER TEN THOUSAND
  U+1ED3C |         𞴼 |         (1/2) | OTTOMAN SIYAQ FRACTION ONE HALF
  U+1ED3D |         𞴽 |         (1/6) | OTTOMAN SIYAQ FRACTION ONE SIXTH
  U+1F100 |         🄀 |             0 | DIGIT ZERO FULL STOP
  U+1F101 |         🄁 |             0 | DIGIT ZERO COMMA
  U+1F102 |         🄂 |             1 | DIGIT ONE COMMA
  U+1F103 |         🄃 |             2 | DIGIT TWO COMMA
  U+1F104 |         🄄 |             3 | DIGIT THREE COMMA
  U+1F105 |         🄅 |             4 | DIGIT FOUR COMMA
  U+1F106 |         🄆 |             5 | DIGIT FIVE COMMA
  U+1F107 |         🄇 |             6 | DIGIT SIX COMMA
  U+1F108 |         🄈 |             7 | DIGIT SEVEN COMMA
  U+1F109 |         🄉 |             8 | DIGIT EIGHT COMMA
  U+1F10A |         🄊 |             9 | DIGIT NINE COMMA
  U+1F10B |         🄋 |             0 | DINGBAT CIRCLED SANS-SERIF DIGIT ZERO
  U+1F10C |         🄌 |             0 | DINGBAT NEGATIVE CIRCLED SANS-SERIF DIGIT ZERO
  U+20001 |         𠀁 |             7 | CJK UNIFIED IDEOGRAPH-20001
  U+20064 |         𠁤 |             4 | CJK UNIFIED IDEOGRAPH-20064
  U+200E2 |         𠃢 |             4 | CJK UNIFIED IDEOGRAPH-200E2
  U+20121 |         𠄡 |             5 | CJK UNIFIED IDEOGRAPH-20121
  U+2092A |         𠤪 |             1 | CJK UNIFIED IDEOGRAPH-2092A
  U+20983 |         𠦃 |            30 | CJK UNIFIED IDEOGRAPH-20983
  U+2098C |         𠦌 |            40 | CJK UNIFIED IDEOGRAPH-2098C
  U+2099C |         𠦜 |            40 | CJK UNIFIED IDEOGRAPH-2099C
  U+20AEA |         𠫪 |             6 | CJK UNIFIED IDEOGRAPH-20AEA
  U+20AFD |         𠫽 |             3 | CJK UNIFIED IDEOGRAPH-20AFD
  U+20B19 |         𠬙 |             3 | CJK UNIFIED IDEOGRAPH-20B19
  U+22390 |         𢎐 |             2 | CJK UNIFIED IDEOGRAPH-22390
  U+22998 |         𢦘 |             3 | CJK UNIFIED IDEOGRAPH-22998
  U+23B1B |         𣬛 |             3 | CJK UNIFIED IDEOGRAPH-23B1B
  U+2626D |         𦉭 |             4 | CJK UNIFIED IDEOGRAPH-2626D
  U+2F890 |         廾 |             9 | CJK COMPATIBILITY IDEOGRAPH-2F890

See [unicode-x](https://github.com/janlelis/unicode-x) for more Unicode related micro libraries.

## MIT License

- Copyright (C) 2016-2020 Jan Lelis <https://janlelis.com>. Released under the MIT license.
- Unicode data: http://www.unicode.org/copyright.html#Exhibit1
