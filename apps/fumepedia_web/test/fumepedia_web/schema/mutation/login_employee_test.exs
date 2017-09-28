defmodule FumepediaWeb.Schema.Mutation.LoginEmployeeTest do
  @moduledoc false

  use FumepediaWeb.ConnCase, async: true
  alias Fumepedia.{Accounts.User, Repo}
  alias FumepediaWeb.Authentication

  setup do
    user =
      %User{}
      |> User.changeset(%{role: "employee", name: "Bob",
                          email: "bob@fumepedia.com", password: "s3kr3t!"})
      |> Repo.insert!
    {:ok, user: user}
  end

  @query """
  mutation {
    loginEmployee(email: "bob@fumepedia.com",password: "s3kr3t!") {
      token
      employee {
        name
      }
    }
  }
  """

  test "creating an employee session", %{user: user} do
    response = post(build_conn(), "/api", query: @query)
    assert %{"data" => %{"loginEmployee" => %{"token" => token}}} = json_response(response, 200)
    assert {:ok, %{type: "employee", id: user.id}} == Authentication.verify(token)
  end

end
