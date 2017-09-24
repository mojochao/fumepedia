defmodule FumepediaWeb.Resolvers.VitolaResolver do
  @moduledoc false

  alias Fumepedia.{Cigar, Repo}

  def all(_args, _info) do
    {:ok, Repo.all(Cigar.Vitola)}
  end

  def find(%{id: id}, _info) do
    case Repo.get(Cigar.Vitola, id) do
      nil     -> {:error, "Vitola id #{id} not found"}
      vitola -> {:ok, vitola}
    end
  end

end
