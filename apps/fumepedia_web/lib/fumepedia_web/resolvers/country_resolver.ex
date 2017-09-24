defmodule FumepediaWeb.Resolvers.CountryResolver do
  @moduledoc false

  alias Fumepedia.{Cigar, Repo}

  def all(_args, _info) do
    {:ok, Repo.all(Cigar.Country)}
  end

  def find(%{id: id}, _info) do
    case Repo.get(Cigar.Country, id) do
      nil     -> {:error, "Country id #{id} not found"}
      country -> {:ok, country}
    end
  end

end
