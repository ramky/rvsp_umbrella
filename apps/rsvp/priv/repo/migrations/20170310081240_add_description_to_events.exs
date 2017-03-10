defmodule Rsvp.Repo.Migrations.AddDescriptionToEvents do
  use Ecto.Migration

  def change do
    alter table(:events)  do
      add :description, :string, size: 100
    end
  end
end
