defmodule NumberConverterTest do
  use ExUnit.Case, async: true

  test "&arabic_to_numeral/1 returns an empty string when given 0" do
    assert NumberConverter.arabic_to_numeral(0) == ""
  end

  test "&arabic_to_numeral/1 returns I when given 1" do
    assert NumberConverter.arabic_to_numeral(1) == "I"
  end

  test "&arabic_to_numeral/1 returns V when given 5" do
    assert NumberConverter.arabic_to_numeral(5) == "V"
  end

  test "&arabic_to_numeral/1 returns X when given 10" do
    assert NumberConverter.arabic_to_numeral(10) == "X"
  end

  test "&arabic_to_numeral/1 returns L when given 50" do
    assert NumberConverter.arabic_to_numeral(50) == "L"
  end

  test "&arabic_to_numeral/1 returns C when given 100" do
    assert NumberConverter.arabic_to_numeral(100) == "C"
  end

  test "&arabic_to_numeral/1 returns D when given 500" do
    assert NumberConverter.arabic_to_numeral(500) == "D"
  end

  test "&arabic_to_numeral/1 returns M when given 1000" do
    assert NumberConverter.arabic_to_numeral(1000) == "M"
  end

  #test "&arabic_to_numeral/1 returns IV when given 4" do
  #  assert NumberConverter.arabic_to_numeral(4) == "IV"
  #end

  #test "&arabic_to_numeral/1 returns IX when given 9" do
  #  assert NumberConverter.arabic_to_numeral(9) == "IX"
  #end

  test "&arabic_to_numeral/1 returns VI when given 6" do
    assert NumberConverter.arabic_to_numeral(6) == "VI"
  end

  test "&arabic_to_numeral/1 returns VII when given 7" do
    assert NumberConverter.arabic_to_numeral(7) == "VII"
  end

  test "&arabic_to_numeral/1 returns XI when given 11" do
    assert NumberConverter.arabic_to_numeral(11) == "XI"
  end

  test "&arabic_to_numeral/1 returns XXI when given 21" do
    assert NumberConverter.arabic_to_numeral(21) == "XXI"
  end
  
end
