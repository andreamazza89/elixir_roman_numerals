defmodule NumberConverter do
  def arabic_to_numeral(0), do: ""
  def arabic_to_numeral(1), do: "I"
  def arabic_to_numeral(5), do: "V"
  def arabic_to_numeral(10), do: "X"
  def arabic_to_numeral(50), do: "L"
  def arabic_to_numeral(100), do: "C"
  def arabic_to_numeral(500), do: "D"
  def arabic_to_numeral(1000), do: "M"
#  def arabic_to_numeral(arabic) do
#    "I"
#  end
end
