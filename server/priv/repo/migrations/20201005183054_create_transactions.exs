defmodule Ofmine.Repo.Migrations.CreateTransactions do
  use Ecto.Migration

  def change do
    create table(:transactions) do
      add :title, :string, null: false
      add :date, :utc_datetime, null: false

      timestamps()
    end

  end
end
