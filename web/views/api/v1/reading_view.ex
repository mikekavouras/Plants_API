defmodule Plants.Api.V1.ReadingView do
  use Plants.Web, :view
  require Logger

  def render("index.json", %{readings: readings}) do
    %{readings: readings}
  end

  def render("create.json", %{value: data}) do
    %{value: data}
  end
end
