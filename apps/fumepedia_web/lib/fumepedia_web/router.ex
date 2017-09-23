defmodule FumepediaWeb.Router do
  use FumepediaWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/api", Absinthe.Plug,
      schema: FumepediaWeb.Schema

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: FumepediaWeb.Schema,
      interface: :simple
  end

end
