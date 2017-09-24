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
alias Fumepedia.Cigar.{Brand, Country, Line, Vitola}

# Countries

usa =
  %Country{name: "United States of America",
           description: "United States of America description."}

cuba =
  %Country{name: "Cuba",
           description: "Cuba description."}
  |> Repo.insert!

honduras =
  %Country{name: "Honduras",
           description: "Honduras description."}
  |> Repo.insert!

dominican_republic =
  %Country{name: "Dominican Republic",
           description: "Dominican Republic description."}
  |> Repo.insert!

nicaragua =
  %Country{name: "Nicaragua",
           description: "Nicaragua description."}
  |> Repo.insert!

# Brands

arturo_fuente =
  %Brand{name: "Arturo Fuente",
         description: "Arturo Fuente description.",
         country: dominican_republic}
  |> Repo.insert!

drew_estates =
  %Brand{name: "Drew Estates",
         description: "Drew Estates description.",
         country: usa}
  |> Repo.insert!

my_father =
  %Brand{name: "My Father Cigars",
         description: "My Father Cigars description.",
         country: nicaragua}
  |> Repo.insert!

# Lines

don_carlos =
  %Line{name: "Don Carlos",
        description: "Don Carlos description.",
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
