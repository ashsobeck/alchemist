defmodule Alchemist.Bean do
  use Ecto.Schema
  import Ecto.Changeset

  schema "beans" do
    field :name, :string
    field :origin, :string
    field :weight, :integer
    field :varietal, :string
    field :altitude, :string
    field :producer, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(bean, attrs) do
    bean
    |> cast(attrs, [:name, :weight, :origin, :varietal, :altitude, :producer])
    |> validate_required([:name, :weight, :origin, :varietal, :altitude, :producer])
  end
end
