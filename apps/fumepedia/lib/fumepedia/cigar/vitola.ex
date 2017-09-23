defmodule Fumepedia.Cigar.Vitola do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset
  alias Fumepedia.Cigar.{Line, Vitola}

  schema "vitolas" do
    field :added_on, :date
    field :name, :string
    field :description, :string
    field :shape, :string
    field :length, :decimal
    field :gauge, :integer
    belongs_to :line, Line
    timestamps()
  end

  @doc false
  def changeset(%Vitola{} = vitola, attrs) do
    vitola
    |> cast(attrs, [
        :added_on,
        :name,
        :description,
        :shape,
        :length,
        :gauge,
      ])
    |> cast_assoc(:line)
    |> validate_required([
        :name,
      ])
  end

end
