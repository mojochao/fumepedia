defmodule FumepediaWeb.Resolvers.LineResolver do
  @moduledoc false

  alias Fumepedia.{Cigar, Repo}

  def all(_args, _info) do
    {:ok, Repo.all(Cigar.Line)}
  end

  def find(%{id: id}, _info) do
    case Repo.get(Cigar.Line, id) do
      nil     -> {:error, "Line id #{id} not found"}
      line -> {:ok, line}
    end
  end

end
