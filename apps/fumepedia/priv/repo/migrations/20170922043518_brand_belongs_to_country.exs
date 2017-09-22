defmodule Fumepedia.Repo.Migrations.BrandBelongsToCountry do
  use Ecto.Migration

  def change do
    alter table(:brands) do
      add :country_id, references(:countries)
    end
  end
end
