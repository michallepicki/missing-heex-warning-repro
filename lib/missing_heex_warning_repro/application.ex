defmodule MissingHeexWarningRepro.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      MissingHeexWarningReproWeb.Telemetry,
      {DNSCluster, query: Application.get_env(:missing_heex_warning_repro, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: MissingHeexWarningRepro.PubSub},
      # Start a worker by calling: MissingHeexWarningRepro.Worker.start_link(arg)
      # {MissingHeexWarningRepro.Worker, arg},
      # Start to serve requests, typically the last entry
      MissingHeexWarningReproWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: MissingHeexWarningRepro.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    MissingHeexWarningReproWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
