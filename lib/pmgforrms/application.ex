defmodule Pmgforrms.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      PmgforrmsWeb.Telemetry,
      {DNSCluster, query: Application.get_env(:pmgforrms, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Pmgforrms.PubSub},
      # Start a worker by calling: Pmgforrms.Worker.start_link(arg)
      # {Pmgforrms.Worker, arg},
      # Start to serve requests, typically the last entry
      PmgforrmsWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Pmgforrms.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    PmgforrmsWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
