defmodule Fumepedia.Repo.Migrations.CreateBrands do
  use Ecto.Migration

  def change do
    create table(:brands) do
      add :name, :string, null: false
      add :body, :string
      add :added_on, :date, null: false, default: fragment("NOW()")
      timestamps()
    end
  end

end
