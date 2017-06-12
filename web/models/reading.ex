defmodule Plants.Reading do
  use Plants.Web, :model

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
