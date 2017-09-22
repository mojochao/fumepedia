defmodule Fumepedia.Cigar.CountryTest do
  use ExUnit.Case
  alias Fumepedia.Cigar.Country

  test "changeset is invalid if name is not present" do
    changeset = Country.changeset(%Country{}, %{})
    refute changeset.valid?
  end

  test "changeset is valid if name is present" do
    changeset = Country.changeset(%Country{}, %{name: "Nicaragua"})
    assert changeset.valid?
  end

end
