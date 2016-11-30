defmodule NumberConverterTest do
  use ExUnit.Case, async: true

  describe "arabic to numeral conversion" do
    test "converts 0 appropriately" do
      assert NumberConverter.arabic_to_numeral(0) == ""
    end

    test "converts 1 appropriately" do
      assert NumberConverter.arabic_to_numeral(1) == "I"
    end

    test "converts 2 appropriately" do
      assert NumberConverter.arabic_to_numeral(2) == "II"
    end

    test "converts 4 appropriately" do
      assert NumberConverter.arabic_to_numeral(4) == "IV"
    end

    test "converts 5 appropriately" do
      assert NumberConverter.arabic_to_numeral(5) == "V"
    end

    test "converts 6 appropriately" do
      assert NumberConverter.arabic_to_numeral(6) == "VI"
    end

    test "converts 10 appropriately" do
      assert NumberConverter.arabic_to_numeral(10) == "X"
    end

    test "converts 50 appropriately" do
      assert NumberConverter.arabic_to_numeral(50) == "L"
    end

    test "converts 100 appropriately" do
      assert NumberConverter.arabic_to_numeral(100) == "C"
    end

    test "converts 500 appropriately" do
      assert NumberConverter.arabic_to_numeral(500) == "D"
    end

    test "converts 1000 appropriately" do
      assert NumberConverter.arabic_to_numeral(1000) == "M"
    end

    test "converts 9 appropriately" do
      assert NumberConverter.arabic_to_numeral(9) == "IX"
    end

    test "converts 7 appropriately" do
      assert NumberConverter.arabic_to_numeral(7) == "VII"
    end

    test "converts 11 appropriately" do
      assert NumberConverter.arabic_to_numeral(11) == "XI"
    end

    test "converts 20 appropriately" do
      assert NumberConverter.arabic_to_numeral(20) == "XX"
    end
test "converts 21 appropriately" do
      assert NumberConverter.arabic_to_numeral(21) == "XXI"
    end

    test "converts 19 appropriately" do
      assert NumberConverter.arabic_to_numeral(19) == "XIX"
    end

    test "converts 40 appropriately" do
      assert NumberConverter.arabic_to_numeral(40) == "XL"
    end

    test "converts 90 appropriately" do
      assert NumberConverter.arabic_to_numeral(90) == "XC"
    end

    test "converts 400 appropriately" do
      assert NumberConverter.arabic_to_numeral(400) == "CD"
    end

    test "converts 900 appropriately" do
      assert NumberConverter.arabic_to_numeral(900) == "CM"
    end

    test "converts 2947 appropriately" do
      assert NumberConverter.arabic_to_numeral(2947) == "MMCMXLVII"
    end

    test "converts 1534 appropriately" do
      assert NumberConverter.arabic_to_numeral(1534) == "MDXXXIV"
    end
  end
end
