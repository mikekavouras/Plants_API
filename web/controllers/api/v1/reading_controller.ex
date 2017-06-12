defmodule Plants.Api.V1.ReadingController do
  use Plants.Web, :controller
  alias Plants.Reading
  alias Plants.Repo

  def index(conn, _params) do
    readings = Repo.all(Plants.Reading)
    render(conn, "index.json", readings: readings)
  end

  def create(conn, %{"data" => data}) do
    {i, _} = Integer.parse(data)
    changeset = Plants.Reading.changeset(%Plants.Reading{value: i})
    Repo.insert(changeset)
    render(conn, "create.json", %{value: i})
  end
end
