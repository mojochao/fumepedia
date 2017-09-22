defmodule Fumepedia.Cigar.LineTest do
  use ExUnit.Case
  alias Fumepedia.Cigar.Line

  test "changeset is invalid if name is not present" do
    changeset = Line.changeset(%Line{}, %{})
    refute changeset.valid?
  end

  test "changeset is valid if name is present" do
    changeset = Line.changeset(%Line{}, %{name: "Don Carlos"})
    assert changeset.valid?
  end

end
