defmodule Fumepedia.Repo.Migrations.LineBelongsToBrand do
  use Ecto.Migration

  def change do
    alter table(:lines) do
      add :brand_id, references(:brands)
    end
  end

end
