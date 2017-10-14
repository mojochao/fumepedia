defmodule FumepediaWeb.Application do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      supervisor(FumepediaWeb.Endpoint, [])
    ]

    opts = [strategy: :one_for_one, name: FumepediaWeb.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    FumepediaWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
