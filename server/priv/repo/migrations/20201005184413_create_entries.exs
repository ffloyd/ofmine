defmodule Ofmine.Repo.Migrations.CreateEntries do
  use Ecto.Migration

  def change do
    create table(:entries) do
      add :amount, :decimal, null: false
      add :transaction_id, references(:transactions, on_delete: :restrict), null: false
      add :account_id, references(:accounts, on_delete: :restrict), null: false

      timestamps()
    end

    create index(:entries, [:transaction_id])
    create index(:entries, [:account_id])
  end
end
