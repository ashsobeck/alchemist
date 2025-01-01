defmodule Alchemist.Repo.Migrations.CreateBeans do
  use Ecto.Migration

  def change do
    create table(:beans) do
      add :name, :string
      add :weight, :integer
      add :origin, :string
      add :varietal, :string
      add :altitude, :string
      add :producer, :string

      timestamps(type: :utc_datetime)
    end
  end
end
