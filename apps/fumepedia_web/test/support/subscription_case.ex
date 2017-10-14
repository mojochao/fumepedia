defmodule FumepediaWeb.SubscriptionCase do
  @moduledoc """
  This module defines the test case to be used by
  subscription tests
  """

  use ExUnit.CaseTemplate

  using do
    quote do
      # Import conveniences for testing with channels
      use FumepediaWeb.ChannelCase
      use Absinthe.Phoenix.SubscriptionTest, schema: FumepediaWeb.Schema

      setup do
        Code.load_file("priv/repo/seeds.exs")

        {:ok, socket} = Phoenix.ChannelTest.connect(FumepediaWeb.UserSocket, %{})
        {:ok, socket} = Absinthe.Phoenix.SubscriptionTest.join_absinthe(socket)

        {:ok, socket: socket}
      end

      import unquote(__MODULE__), only: [menu_item: 1]
    end
  end

  # handy function for grabbing a fixture
  def menu_item(name) do
    Fumepedia.Repo.get_by!(Fumepedia.Menu.Item, name: name)
  end
end
