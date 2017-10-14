defmodule FumepediaWeb.Schema.Query.CigarLinesTest do
  use FumepediaWeb.ConnCase, async: true

  setup do
    Code.load_file("../fumepedia/priv/repo/seeds.exs")
  end

  @query """
  {
    lines {
      name
    }
  }
  """
  test "line field returns cigar lines" do
    conn = get(build_conn(), "/api", query: @query)

    assert json_response(conn, 200) == %{
             "data" => %{
               "lines" => [
                 %{"name" => "Don Carlos"}
               ]
             }
           }
  end
end
