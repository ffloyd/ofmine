defmodule Ofmine.Journal.Entry do
  use Ecto.Schema
  import Ecto.Changeset

  schema "entries" do
    field :amount, :decimal
    field :transaction_id, :id
    field :account_id, :id

    timestamps()
  end

  @doc false
  def changeset(entry, attrs) do
    entry
    |> cast(attrs, [:amount])
    |> validate_required([:amount])
  end
end
