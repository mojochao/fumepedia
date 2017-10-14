defmodule Fumepedia.Application do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      supervisor(Fumepedia.Repo, [])
    ]

    opts = [strategy: :one_for_one, name: Fumepedia.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
