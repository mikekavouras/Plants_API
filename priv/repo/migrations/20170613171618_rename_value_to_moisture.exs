defmodule Plants.Repo.Migrations.RenameValueToMoisture do
  use Ecto.Migration

  def change do
    rename table(:readings), :value, to: :moisture
  end
end
