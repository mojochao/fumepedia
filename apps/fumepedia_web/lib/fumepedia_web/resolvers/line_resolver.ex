defmodule FumepediaWeb.Resolvers.LineResolver do
  @moduledoc false

  import Ecto.Query
  alias Fumepedia.{Cigar, Repo}

  def all(_args, _info) do
    {:ok, (Repo.all from l in Cigar.Line, preload: [:vitolas])}
  end

  def find(%{id: id}, _info) do
    case (Repo.one from l in Cigar.Line, where: l.id == ^id, preload: [:vitolas]) do
      nil     -> {:error, "Line id #{id} not found"}
      line -> {:ok, line}
    end
  end

end
