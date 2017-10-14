defmodule FumepediaWeb.Authentication do
  @moduledoc false

  @user_salt "user salt"

  alias Phoenix.Token

  def sign(data) do
    Token.sign(FumepediaWeb.Endpoint, @user_salt, data)
  end

  def verify(token) do
    Token.verify(FumepediaWeb.Endpoint, @user_salt, token, max_age: 365 * 24 * 3600)
  end
end
