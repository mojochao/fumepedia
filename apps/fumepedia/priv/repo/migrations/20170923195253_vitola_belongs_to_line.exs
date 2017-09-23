defmodule Fumepedia.Repo.Migrations.VitolaBelongsToLine do
  use Ecto.Migration

  def change do
    alter table(:vitolas) do
      add :line_id, references(:lines)
    end
  end
end
