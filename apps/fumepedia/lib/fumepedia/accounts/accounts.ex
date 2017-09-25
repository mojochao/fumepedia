defmodule Fumepedia.Accounts do
  @moduledoc """
  The accounts context.
  """

  import Ecto.Query, warn: false
  alias Comeonin.Ecto.Password
  alias Fumepedia.Accounts.User
  alias Fumepedia.Repo

  def authenticate(role, email, password) do
    user = Repo.get_by(User, role: role, email: email)
    with %{password: digest} <- user,
         true <- Password.valid?(password, digest) do
      {:ok, user}
    else
      _ -> :error
    end
  end

end
