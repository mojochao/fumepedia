defmodule FumepediaWeb.Schema.Query.CigarVitolasTest do
  use FumepediaWeb.ConnCase, async: true

  setup do
    Code.load_file("../fumepedia/priv/repo/seeds.exs")
  end

  @query """
  {
    vitolas {
      name
    }
  }
  """
  test "line field returns cigar vitolas" do
    conn = get(build_conn(), "/api", query: @query)
    assert json_response(conn, 200) == %{"data" => %{"vitolas" => [
      %{"name" => "Belicoso"},
      %{"name" => "No. 3"},
    ]}}
  end

end
