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
alias Fumepedia.Cigar.{Brand, Line, Vitola}

# Brands

arturo_fuente =
  %Brand{name: "Arturo Fuente",
         body: "Arturo Fuente body."}
  |> Repo.insert!

drew_estates =
  %Brand{name: "Drew Estates",
         body: "Drew Estates body."}
  |> Repo.insert!

my_father =
  %Brand{name: "My Father Cigars",
         body: "My Father Cigars body."}
  |> Repo.insert!

# Lines

don_carlos =
  %Line{name: "Don Carlos",
        body: "Don Carlos body.",
        brand: arturo_fuente}
  |> Repo.insert!

# Vitolas

dc_belicoso =
  %Vitola{name: "Belicoso",
          shape: "belicoso",
          length: 5.25,
          gauge: 50,
          line: don_carlos}
  |> Repo.insert!

dc_number3 =
  %Vitola{name: "No. 3",
          shape: "parejo",
          length: 5.5,
          gauge: 44,
          line: don_carlos}
  |> Repo.insert!
