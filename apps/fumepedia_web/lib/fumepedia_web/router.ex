defmodule FumepediaWeb.Router do
  @moduledoc false

  use FumepediaWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
    plug FumepediaWeb.Context
  end

  scope "/" do
    pipe_through :api

    forward "/api", Absinthe.Plug,
      schema: FumepediaWeb.Schema

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: FumepediaWeb.Schema
  end

end
