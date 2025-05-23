defmodule MissingHeexWarningReproWeb.Router do
  use MissingHeexWarningReproWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MissingHeexWarningReproWeb do
    pipe_through :api
  end
end
