defmodule FumepediaWeb.Resolvers.BrandResolver do
  @moduledoc false

  alias Fumepedia.{Cigar, Repo}

  def all(_args, _info) do
    {:ok, Repo.all(Cigar.Brand)}
  end

  def find(%{id: id}, _info) do
    case Repo.get(Cigar.Brand, id) do
      nil   -> {:error, "Brand id #{id} not found"}
      brand -> {:ok, brand}
    end
  end

end
