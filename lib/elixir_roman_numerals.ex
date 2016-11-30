defmodule NumberConverter do
  @symbols [ %{ a: "I", b: "V", c: "X"},
             %{ a: "X", b: "L", c: "C"},
             %{ a: "C", b: "D", c: "M"},
             %{ a: "M"}]

  def arabic_to_numeral(arabic) do
    digits = Integer.digits(arabic) 
    List.foldr(digits, accumulator = [output: "", position: 0], fn(el, acc) -> 
      [output: cond do
        el == 0 ->
          ""
        el in 1..3 ->
          Enum.at(@symbols, accumulator[:position])[:a] |> String.duplicate(el)
        el == 4 ->
          Enum.at(@symbols, accumulator[:position])[:a] <> Enum.at(@symbols, position)[:b]
        el == 5 ->
          Enum.at(@symbols, accumulator[:position])[:b]
        el in 6..8 ->
          postfix = Enum.at(@symbols, position)[:a] |> String.duplicate(el - 5)
          Enum.at(@symbols, accumulator[:position])[:b] <> postfix
        el == 9 ->
          Enum.at(@symbols, position)[:a] <> Enum.at(@symbols, position)[:c]
      end <> acc, position: accumulator[:position] + 1]
    end)
  end 
end
