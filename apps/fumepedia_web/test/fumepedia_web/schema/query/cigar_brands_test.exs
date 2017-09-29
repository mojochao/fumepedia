defmodule FumepediaWeb.Schema.Query.CigarBrandsTest do
  use FumepediaWeb.ConnCase, async: true

  setup do
    Code.load_file("../fumepedia/priv/repo/seeds.exs")
  end

  @query """
  {
    brands {
      name
    }
  }
  """
  test "brands field returns cigar brands" do
    conn = get(build_conn(), "/api", query: @query)
    assert json_response(conn, 200) == %{"data" => %{"brands" => [
      %{"name" => "Arturo Fuente"},
      %{"name" => "Drew Estates"},
      %{"name" => "My Father Cigars"}
    ]}}
  end

end
