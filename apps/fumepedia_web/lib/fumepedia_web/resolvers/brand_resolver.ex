defmodule FumepediaWeb.Resolvers.BrandResolver do
  @moduledoc false

  import Ecto.Query
  alias Fumepedia.{Cigar, Repo}

  def all(_args, _info) do
    {:ok, (Repo.all from b in Cigar.Brand, preload: [:lines])}
  end

  def find(%{id: id}, _info) do
    case (Repo.one from b in Cigar.Brand, where: b.id == ^id, preload: [:lines]) do
      nil   -> {:error, "Brand id #{id} not found"}
      brand -> {:ok, brand}
    end
  end

end
