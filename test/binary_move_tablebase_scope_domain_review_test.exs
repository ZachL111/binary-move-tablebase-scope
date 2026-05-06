defmodule BinaryMoveTablebaseScope.DomainReviewTest do
  use ExUnit.Case

  test "domain review lane" do
    item = %{signal: 61, slack: 33, drag: 23, confidence: 79}
    assert BinaryMoveTablebaseScope.DomainReview.score(item) == 165
    assert BinaryMoveTablebaseScope.DomainReview.lane(item) == "ship"
  end
end
