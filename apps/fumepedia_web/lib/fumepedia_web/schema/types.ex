defmodule FumepediaWeb.Schema.Types do
  @moduledoc false

  use Absinthe.Schema.Notation

  object :country do
    field :id, :id
    field :name, :string
    field :description, :string
  end

  object :brand do
    field :id, :id
    field :name, :string
    field :description, :string
    field :country, :country
    field :lines, list_of(:line)
  end

  object :line do
    field :id, :id
    field :name, :string
    field :description, :string
    field :brand, :brand
    field :vitolas, list_of(:vitola)
  end

  object :vitola do
    field :id, :id
    field :name, :string
    field :description, :string
    field :shape, :string
    field :length, :string
    field :guage, :integer
    field :line, :line
  end

end
