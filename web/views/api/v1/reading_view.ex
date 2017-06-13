defmodule Plants.Api.V1.ReadingView do
  use Plants.Web, :view

  def render("index.json", %{readings: readings}) do
    %{readings: readings}
  end

  def render("create.json", %{moisture: data}) do
    %{moisture: data}
  end
end
