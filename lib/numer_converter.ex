defmodule NumberConverter do

  @tokens [%{value: 1000, symbol: "M"}, 
           %{value: 900, symbol: "CM"},
           %{value: 500, symbol: "D"},
           %{value: 400, symbol: "CD"},
           %{value: 100, symbol: "C"},
           %{value: 90, symbol: "XC"},
           %{value: 50, symbol: "L"},
           %{value: 40, symbol: "XL"},
           %{value: 10, symbol: "X"},
           %{value: 9, symbol: "IX"},
           %{value: 5, symbol: "V"},
           %{value: 4, symbol: "IV"},
           %{value: 1, symbol: "I"}]

  def arabic_to_numeral(arabic) do
    accumulate_tokens(arabic, @tokens)
  end

  defp accumulate_tokens(number_left, tokens) do
    current_token = Enum.find(tokens, fn(el) -> number_left - el.value >= 0  end)

    if current_token == nil do
      ""
    else
      new_number = number_left - current_token.value
      current_token.symbol <> accumulate_tokens(new_number, tokens) 
    end
  end

end
