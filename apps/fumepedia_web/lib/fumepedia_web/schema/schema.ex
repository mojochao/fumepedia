defmodule FumepediaWeb.Schema do
  @moduledoc false

  use Absinthe.Schema

  alias FumepediaWeb.Resolvers.{
    BrandResolver,
    CountryResolver,
    LineResolver,
    VitolaResolver,
  }

  import_types FumepediaWeb.Schema.Types

  query do

    @desc "Get a country by id."
    field :country, type: :country do
      arg :id, non_null(:id)
      resolve &CountryResolver.find/2
    end

    @desc "Get a list of all countries."
    field :countries, list_of(:country) do
      resolve fn _, _, _ ->
        {:ok, &CountryResolver.all/2}
      end
    end

    @desc "Get a brand by id."
    field :brand, type: :brand do
      arg :id, non_null(:id)
      resolve &BrandResolver.find/2
    end

    @desc "Get a list of all brands."
    field :brands, list_of(:brand) do
      resolve fn _, _, _ ->
        {:ok, &BrandResolver.all/2}
      end
    end

    @desc "Get a line by id."
    field :line, type: :line do
      arg :id, non_null(:id)
      resolve &LineResolver.find/2
    end

    @desc "Get a list of all lines."
    field :lines, list_of(:line) do
      resolve fn _, _, _ ->
        {:ok, &LineResolver.all/2}
      end
    end

    @desc "Get a vitola by id."
    field :vitola, type: :vitola do
      arg :id, non_null(:id)
      resolve &VitolaResolver.find/2
    end

    @desc "Get a list of all vitolas."
    field :vitolas, list_of(:vitola) do
      resolve fn _, _, _ ->
        {:ok, &VitolaResolver.all/2}
      end
    end

  end

end
