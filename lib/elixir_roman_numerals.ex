defmodule NumberConverter do
  def arabic_to_numeral(0), do: ""
  def arabic_to_numeral(1), do: "I"
  def arabic_to_numeral(5), do: "V"
  def arabic_to_numeral(10), do: "X"
  def arabic_to_numeral(50), do: "L"
  def arabic_to_numeral(100), do: "C"
  def arabic_to_numeral(500), do: "D"
  def arabic_to_numeral(1000), do: "M"
  def arabic_to_numeral(arabic) do
    result = ""
    
    #cond do
    #  arabic in 5..8 ->
    #    "V" <> String.duplicate("I", arabic - 5)    
    #  arabic in 10..38 ->
    #    String.duplicate("X", div(arabic, 10)) <> String.duplicate("I", arabic - 10)    
    #end
  end
end
