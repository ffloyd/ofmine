defmodule Ofmine.Journal.Transaction do
  use Ecto.Schema
  import Ecto.Changeset

  schema "transactions" do
    field :date, :utc_datetime
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(transaction, attrs) do
    transaction
    |> cast(attrs, [:title, :date])
    |> validate_required([:title, :date])
  end
end
