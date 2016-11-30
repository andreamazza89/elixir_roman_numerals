defmodule NumberConverter do

  @conversion_tokens [{1000, "M"}, 
                      {900, "CM"},
                      {500, "D"},
                      {400, "CD"},
                      {100, "C"},
                      {90, "XC"},
                      {50, "L"},
                      {40, "XL"},
                      {10, "X"},
                      {9, "IX"},
                      {5, "V"},
                      {4, "IV"},
                      {1, "I"}]

  def arabic_to_numeral(arabic) do
    do_arabic_to_numeral(arabic, @conversion_tokens)
  end

  defp do_arabic_to_numeral(0, _) do
    ""
  end

  defp do_arabic_to_numeral(number_left, tokens = [{arabic, roman} | _ ]) 
    when number_left - arabic >= 0 do
      roman <> do_arabic_to_numeral(number_left - arabic, tokens)
  end
  
  defp do_arabic_to_numeral(number_left, [ _ | remaining_tokens]) do
    do_arabic_to_numeral(number_left, remaining_tokens)
  end
end
