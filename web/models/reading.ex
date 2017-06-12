defmodule Plants.Reading do
  use Plants.Web, :model
  @derive {Poison.Encoder, only: [:value]}

  def changeset(model, params \\ %{}) do
    model
    |> cast(params, [:value])
    |> validate_required([:value])
  end

  schema "readings" do
    field :value, :integer

    timestamps()
  end
end
