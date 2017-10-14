defmodule Fumepedia.Cigar.BrandTest do
  use ExUnit.Case
  alias Fumepedia.Cigar.Brand

  test "changeset is invalid if name is not present" do
    changeset = Brand.changeset(%Brand{}, %{})
    refute changeset.valid?
  end

  test "changeset is valid if name is present" do
    changeset = Brand.changeset(%Brand{}, %{name: "name"})
    assert changeset.valid?
  end

  test "changeset is valid if all fields are present" do
    attrs = %{name: "name", body: "body", image: "image"}
    changeset = Brand.changeset(%Brand{}, attrs)
    assert changeset.valid?
  end
end
