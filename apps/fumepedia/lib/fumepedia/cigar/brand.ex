defmodule Fumepedia.Cigar.Brand do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset
  alias Fumepedia.Cigar.{Brand, Country, Line}

  schema "brands" do
    field :added_on, :date
    field :name, :string
    field :description, :string
    belongs_to :country, Country
    has_many :lines, Line
    timestamps()
  end

  @doc false
  def changeset(%Brand{} = brand, attrs) do
    brand
    |> cast(attrs, [
        :added_on,
        :name,
        :description,
      ])
    |> cast_assoc(:country)
    |> cast_assoc(:lines)
    |> validate_required([
        :name
      ])
  end

end
