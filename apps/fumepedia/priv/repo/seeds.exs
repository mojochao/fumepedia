# Script for populating the cigar database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Fumepedia.Repo.insert!(%Fumepedia.SomeSchema{})
#
# Use the bang functions (`insert!`, `update!` and so on) as they
# will fail if something goes wrong.

alias Fumepedia.Repo
alias Fumepedia.Accounts.User
alias Fumepedia.Cigar.{Brand, Line, Vitola}

# Brands

arturo_fuente_image = "https://upload.wikimedia.org/wikipedia/en/4/4f/Logo_Arturo_Fuente.jpg"
drew_estate_image = "https://img.cigarsinternational.com/content/brand/logo/drewestate.png"
my_father_image = "http://myfathercigars.com/images/mflogo-sm.png"

arturo_fuente =
  %Brand{name: "Arturo Fuente",
         body: "Arturo Fuente body.",
         image: arturo_fuente_image}
  |> Repo.insert!

%Brand{name: "Drew Estate",
       body: "Drew Estate body.",
       image: drew_estate_image}
|> Repo.insert!

%Brand{name: "My Father Cigars",
       body: "My Father Cigars body.",
       image: my_father_image}
|> Repo.insert!

# Lines

don_carlos =
  %Line{name: "Don Carlos",
        body: "Don Carlos body.",
        brand: arturo_fuente}
  |> Repo.insert!

# Vitolas

%Vitola{name: "Belicoso",
        shape: "belicoso",
        length: 5.25,
        gauge: 50,
        line: don_carlos}
|> Repo.insert!

%Vitola{name: "No. 3",
        shape: "parejo",
        length: 5.5,
        gauge: 44,
        line: don_carlos}
|> Repo.insert!

# Users

%User{}
|> User.changeset(%{email: "alice@fumepedia.int",
      name: "alice",
      password: "password",
      role: "employee"})
|> Repo.insert!

%User{}
|> User.changeset(%{email: "bob@fumepedia.int",
      name: "bob",
      password: "password",
      role: "user"})
|> Repo.insert!
