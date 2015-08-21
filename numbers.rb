class DigitsToText

  DICTIONARY = {0 => "zero", 
                1 => "one",
                2 => "two",
                3 => "three",
                4 => "four",
                5 => "five",
                6 => "six",
                7 => "seven",
                8 => "eight",
                9 => "nine",
                10 => "ten",
                11 => "eleven",
                12 => "twelve",
                13 => "thirteen",
                14 => "fourteen",
                15 => "fifteen",
                16 => "sixteen",
                17 => "seventeen",
                18 => "eighteen",
                19 => "nineteen",
                20 => "twenty",
                30 => "thirty",
                40 => "fourty",
                50 => "fifty",
                60 => "sixty",
                70 => "seventy",
                80 => "eighty",
                90 => "ninety",
                100 => "one hundred",
                200 => "two hundred",
                300 => "three hundred",
                400 => "four hundred",
                500 => "five hundred",
                600 => "six hundred",
                700 => "seven hundred",
                800 => "eight hundred",
                900 => "nine hundred" }

  def initialize(number)
    @number = number
    @text = ''
  end

  def check_value(number)
    if number >= 100 && number <=999
      hundreds(number)
    elsif number >= 20 && number <= 99
      tens(number)
    elsif number >= 0 && number <= 19
      zero_to_nineteen(number)
    elsif number >= -999 && number < 0
      @text += "negative "
      check_value(number.abs)
    else
      puts "number is outside the range of this program!"
    end
  end

  def hundreds(number)
    remainder = number % 100
    @text += DICTIONARY[(number - remainder)] + " "
    if remainder > 0
      check_value(remainder)
    end
  end

  def tens(number)
    remainder = number % 10
    @text += DICTIONARY[(number - remainder)] + " "
    if remainder > 0
      check_value(remainder)
    end
  end

  def zero_to_nineteen(number)
    @text += DICTIONARY[number]
  end

  def run
    check_value(@number)
    return @text.strip
  end

end
