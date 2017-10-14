defmodule Fumepedia.Repo.Migrations.CreateVitolas do
  use Ecto.Migration

  def change do
    create table(:vitolas) do
      add :added_on, :date, null: false, default: fragment("NOW()")
      add :name, :string, null: false
      add :body, :string
      add :image, :string
      add :shape, :string
      add :length, :decimal
      add :gauge, :integer
      timestamps()
    end
  end

end
