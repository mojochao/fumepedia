defmodule Fumepedia.Cigar.VitolaTest do
  use ExUnit.Case
  alias Fumepedia.Cigar.Vitola

  test "changeset is invalid if name is not present" do
    changeset = Vitola.changeset(%Vitola{}, %{})
    refute changeset.valid?
  end

  test "changeset is valid if name is present" do
    changeset = Vitola.changeset(%Vitola{}, %{name: "No. 3"})
    assert changeset.valid?
  end

  test "changeset is valid if all fields are present" do
    attrs = %{name: "name", body: "body", image: "image"}
    changeset = Vitola.changeset(%Vitola{}, attrs)
    assert changeset.valid?
  end
end
