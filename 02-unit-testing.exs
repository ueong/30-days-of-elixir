ExUnit.start

defmodule MyTest do
  use ExUnit.Case

  test 'simple test' do
    assert 1 + 1 == 2
    #assert 1 + 1 == 3
  end

  test 'refute is opposite of assert' do
    refute 1 + 1 == 3
  end

  test :assert_raise do
    assert_raise ArithmeticError, fn ->
      1 + "X"
    end
  end

  test 'assert_in_delta_asserts that val1 and val2 differ by less then delta.' do
    assert_in_delta 1, # actual
                    5, # expected
                    6  # delta
  end
end
