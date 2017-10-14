defmodule Fumepedia.Cigar.Line do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset
  alias Fumepedia.Cigar.{Brand, Line, Vitola}

  schema "lines" do
    field(:added_on, :date)
    field(:name, :string)
    field(:body, :string)
    field(:image, :string)
    belongs_to(:brand, Brand)
    has_many(:vitolas, Vitola)
    timestamps()
  end

  @doc false
  def changeset(%Line{} = line, attrs) do
    line
    |> cast(attrs, [
         :added_on,
         :name,
         :body,
         :image
       ])
    |> cast_assoc(:brand)
    |> cast_assoc(:vitolas)
    |> validate_required([
         :name
       ])
  end
end
