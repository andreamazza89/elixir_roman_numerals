defmodule NumberConverter do

  def arabic_to_numeral(0), do: ""

  def arabic_to_numeral(arabic) when (arabic - 1000) >= 0 do
    "M" <> arabic_to_numeral(arabic - 1000)
  end

  def arabic_to_numeral(arabic) when (arabic - 900) >= 0 do
    "CM" <> arabic_to_numeral(arabic - 900)
  end

  def arabic_to_numeral(arabic) when (arabic - 500) >= 0 do
    "D" <> arabic_to_numeral(arabic - 500)
  end

  def arabic_to_numeral(arabic) when (arabic - 400) >= 0 do
    "CD" <> arabic_to_numeral(arabic - 400)
  end

  def arabic_to_numeral(arabic) when (arabic - 100) >= 0 do
    "C" <> arabic_to_numeral(arabic - 100)
  end

  def arabic_to_numeral(arabic) when (arabic - 90) >= 0 do
    "XC" <> arabic_to_numeral(arabic - 90)
  end

  def arabic_to_numeral(arabic) when (arabic - 50) >= 0 do
    "L" <> arabic_to_numeral(arabic - 50)
  end

  def arabic_to_numeral(arabic) when (arabic - 40) >= 0 do
    "XL" <> arabic_to_numeral(arabic - 40)
  end

  def arabic_to_numeral(arabic) when (arabic - 10) >= 0 do
    "X" <> arabic_to_numeral(arabic - 10)
  end

  def arabic_to_numeral(arabic) when (arabic - 9) >= 0 do
    "IX" <> arabic_to_numeral(arabic - 9)
  end

  def arabic_to_numeral(arabic) when (arabic - 5) >= 0 do
    "V" <> arabic_to_numeral(arabic - 5)
  end

  def arabic_to_numeral(arabic) when (arabic - 4) >= 0 do
    "IV" <> arabic_to_numeral(arabic - 4)
  end

  def arabic_to_numeral(arabic) when (arabic - 1) >= 0 do
    "I" <> arabic_to_numeral(arabic - 1)
  end

end
