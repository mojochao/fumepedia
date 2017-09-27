defmodule FumepediaWeb.Schema.CigarTypes do
  @moduledoc false

  use Absinthe.Schema.Notation

  scalar :decimal do
    parse fn
      %{value: value}, _ ->
        Decimal.parse(value)
      _, _ -> :error
    end

    serialize &to_string/1
  end

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
    field :length, :decimal
    field :gauge, :integer
    field :line, :line
  end

end
