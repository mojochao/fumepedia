defmodule Fumepedia.Repo.Migrations.CreateCountries do
  use Ecto.Migration

  def change do
    create table(:countries) do
      add :name, :string, null: false
      add :description, :string
      add :added_on, :date, null: false, default: fragment("NOW()")
      timestamps()
    end
  end

end
