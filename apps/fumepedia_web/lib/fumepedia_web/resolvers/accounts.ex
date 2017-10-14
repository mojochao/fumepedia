defmodule FumepediaWeb.Resolvers.Accounts do
  @moduledoc """
  Accounts context resolvers.
  """

  alias Fumepedia.Accounts
  alias FumepediaWeb.Authentication

  def login_employee(_, %{email: email, password: password}, _) do
    case Accounts.authenticate("employee", email, password) do
      {:ok, user} ->
        token = Authentication.sign(%{type: "employee", id: user.id})
        {:ok, %{token: token, employee: user}}
      _ ->
        {:error, "incorrect email or password"}
    end
  end

end
