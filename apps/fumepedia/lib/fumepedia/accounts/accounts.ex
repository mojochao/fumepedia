defmodule Fumepedia.Accounts do
  @moduledoc """
  The accounts context.
  """

  import Ecto.Query, warn: false

  alias Comeonin.Ecto.Password
  alias Fumepedia.Repo
  alias __MODULE__.User

  def authenticate(role, email, password) do
    user = Repo.get_by(User, role: role, email: email)
    with %{password: digest} <- user,
         true <- Password.valid?(password, digest) do
      {:ok, user}
    else
      _ -> :error
    end
  end

  def lookup(role, id) do
    Repo.get_by(User, role: role, id: id)
  end

end
