defmodule Plants.Repo.Migrations.CreateReading do
  use Ecto.Migration

  def change do
    create table(:readings) do
      add :value, :integer

      timestamps()
    end
  end
end
