defmodule Plants.Api.V1.ReadingControllerTest do
  use Plants.ConnCase

  test "GET /api/v1/readings", %{conn: conn} do
    conn = get conn, "/api/v1/readings"
    assert json_response(conn, 200) == %{
      "readings" => []
    }
  end

  test "POST /api/v1/readings", %{conn: conn} do
    conn = post conn, "/api/v1/readings", %{data: "100"}
    assert json_response(conn, 200) == %{
      "value" => 100
    }
    assert length(Plants.Repo.all(Plants.Reading)) == 1
  end
end
