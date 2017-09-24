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

    # Brands

    @desc "Get a brand by id."
    field :brand, type: :brand do
      arg :id, non_null(:id)
      resolve &BrandResolver.find/2
    end

    @desc "Get a list of all brands."
    field :brands, list_of(:brand) do
      resolve &BrandResolver.all/2
    end

    # Countries

    @desc "Get a country by id."
    field :country, type: :country do
      arg :id, non_null(:id)
      resolve &CountryResolver.find/2
    end

    @desc "Get a list of all countries."
    field :countries, list_of(:country) do
      resolve &CountryResolver.all/2
    end

    # Lines

    @desc "Get a line by id."
    field :line, type: :line do
      arg :id, non_null(:id)
      resolve &LineResolver.find/2
    end

    @desc "Get a list of all lines."
    field :lines, list_of(:line) do
      resolve &LineResolver.all/2
    end

    # Vitolas

    @desc "Get a vitola by id."
    field :vitola, type: :vitola do
      arg :id, non_null(:id)
      resolve &VitolaResolver.find/2
    end

    @desc "Get a list of all vitolas."
    field :vitolas, list_of(:vitola) do
      resolve &VitolaResolver.all/2
    end

  end

end