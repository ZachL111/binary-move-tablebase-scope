defmodule BinaryMoveTablebaseScopeTest do
  use ExUnit.Case

  test "fixture decisions" do
    signal_case_1 = %{demand: 66, capacity: 81, latency: 22, risk: 8, weight: 7}
    assert BinaryMoveTablebaseScope.score(signal_case_1) == 179
    assert BinaryMoveTablebaseScope.classify(signal_case_1) == "accept"
    signal_case_2 = %{demand: 81, capacity: 83, latency: 10, risk: 22, weight: 10}
    assert BinaryMoveTablebaseScope.score(signal_case_2) == 197
    assert BinaryMoveTablebaseScope.classify(signal_case_2) == "accept"
    signal_case_3 = %{demand: 91, capacity: 83, latency: 13, risk: 17, weight: 5}
    assert BinaryMoveTablebaseScope.score(signal_case_3) == 201
    assert BinaryMoveTablebaseScope.classify(signal_case_3) == "accept"
  end
end
