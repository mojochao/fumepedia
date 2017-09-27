defmodule FumepediaWeb.Schema.CigarTypes do
  @moduledoc false

  use Absinthe.Schema.Notation

  object :brand do
    field :id, :id
    field :name, :string
    field :body, :string
    field :lines, list_of(:line)
  end

  object :line do
    field :id, :id
    field :name, :string
    field :body, :string
    field :brand, :brand
    field :vitolas, list_of(:vitola)
  end

  object :vitola do
    field :id, :id
    field :name, :string
    field :body, :string
    field :shape, :string
    field :length, :string
    field :gauge, :integer
    field :line, :line
  end

end
