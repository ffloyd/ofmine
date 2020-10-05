defmodule OfmineWeb.Schema.Journal do
  use Absinthe.Schema.Notation

  import OfmineWeb.Schema.Helpers

  @desc """
  Double-entry accounting transaction.
  Describes balanced money transfer between 2 or more accounts.
  """
  object :transaction do
    field :id, non_null(:id)
    field :title, non_null(:string), description: "Describes transaction's purpose ('buy a car', 'salary', ...)"
    field :date, non_null(:datetime), description: "When transaction happened"

    @desc """
    Balanced entries.

    'Balanced' means the following:
    If you have an entry that added 100$ to one account,
    as a part of transaction you must other entries that
    substitutes 100$ from other account(s).

    Ofmine guaratees that each transaction is balanced.
    """
    field :entries, list_of!(:entry)
  end

  @desc """
  Entry desribes balance change for a single account.
  """
  object :entry do
    field :id, non_null(:id)
    field :account, non_null(:account), description: "Account to change balance"
    field :transaction, non_null(:transaction), description: "Any entry is a part of a distinct transaction"
    field :amount, non_null(:money), description: "Account's balance will be changed with this amount"
  end

  @desc """
  Account like a bank account.

  In double-entry accounting can represent not only your assets,
  but also spending category (like a shop, taxi or some category of goods).

  Also used to represent income sources (like a salary, dividends, etc.)
  """
  object :account do
    field :id, non_null(:id)
    field :name, non_null(:string), description: "Name of an account must be unique in a scope of user"
    field :balance, non_null(:money), description: "Current balance. Calculated from entries"
    field :entries, list_of!(:entry), description: "All entries related to this account"
  end

  @desc "Reperesents fixed money amount."
  object :money do
    field :amount, non_null(:decimal)
  end

  object :journal_queries do
    @desc "All current user transactions list"
    field :transactions, list_of!(:transaction)

    @desc "All current user accounts list"
    field :accounts, list_of!(:account)
  end
end
