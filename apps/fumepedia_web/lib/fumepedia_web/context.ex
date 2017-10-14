defmodule FumepediaWeb.Context do
  @moduledoc """
  Plug module to add authenticated users to a Plug context for use
  in authorizing usage.
  """

  @behaviour Plug
  import Plug.Conn

  alias Fumepedia.Accounts
  alias FumepediaWeb.Authentication

  def init(opts) do
    opts
  end

  def call(conn, _) do
    context = build_context(conn)
    put_private(conn, :absinthe, %{context: context})
  end

  defp build_context(conn) do
    with ["Bearer " <> token] <- get_req_header(conn, "authorization"),
         {:ok, data} <- Authentication.verify(token),
         %{} = user <- get_user(data) do
      %{current_user: user}
    end
  else
    _ -> %{}
  end

  defp get_user(%{id: id, role: role}) do
    Accounts.lookup(role, id)
  end
end
