defmodule FumepediaWeb.Context do
  @behaviour Plug
  import Plug.Conn

  def init(opts) do
    opts
  end

  def call(conn, _) do
    context = build_context(conn)
    put_private(conn, :absinthe, %{context: context})
  end

  defp build_context(conn) do
    with ["Bearer " <> token] <- get_req_header(conn, "authorization"),
         {:ok, data} <- FumepediaWeb.Authentication.verify(token),
         %{} = user <- get_user(data) do
           %{current_user: user}
         end
    else
      _ -> %{}
  end

  defp get_user(%{id: id, role: role}) do
    Fumepedia.Accounts.lookup(role, id)
  end

end
