defmodule Plants.Reading do
  use Plants.Web, :model
  @derive {Poison.Encoder, only: [:moisture]}

  def changeset(model, params \\ %{}) do
    model
    |> cast(params, [:moisture])
    |> validate_required([:moisture])
  end

  schema "readings" do
    field :moisture, :integer

    timestamps()
  end
end
