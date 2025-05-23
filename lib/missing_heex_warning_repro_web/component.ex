defmodule MissingHeexWarningReproWeb.Component do
  use Phoenix.Component

  def flop_table(assigns) do
    ~H"""
    <Flop.Phoenix.pagination
      meta={@meta}
      path={@path}
      opts={[]}
    />
    """
  end
end