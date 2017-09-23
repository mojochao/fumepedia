defmodule Fumepedia.Cigar.Country do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset
  alias Fumepedia.Cigar.{Brand, Country}

  schema "countries" do
    field :added_on, :date
    field :name, :string
    field :description, :string
    has_many :brands, Brand
    timestamps()
  end

  @doc false
  def changeset(%Country{} = country, attrs) do
    country
    |> cast(attrs, [
        :added_on,
        :name,
        :description,
      ])
    |> cast_assoc(:brands)
    |> validate_required([
        :name
      ])
  end

end
