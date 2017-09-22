defmodule Fumepedia.Repo.Migrations.CreateVitolas do
  use Ecto.Migration

  def change do
    create table(:vitolas) do
      add :added_on, :date, null: false, default: fragment("NOW()")
      add :name, :string, null: false
      add :description, :string
      add :shape, :string
      add :length, :decimal
      add :guage, :integer
      timestamps()
    end
  end

end