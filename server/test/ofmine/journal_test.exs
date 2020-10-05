defmodule Ofmine.JournalTest do
  use Ofmine.DataCase

  alias Ofmine.Journal

  describe "account" do
    alias Ofmine.Journal.Account

    @valid_attrs %{name: "some name"}
    @update_attrs %{name: "some updated name"}
    @invalid_attrs %{name: nil}

    def account_fixture(attrs \\ %{}) do
      {:ok, account} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Journal.create_account()

      account
    end

    test "list_account/0 returns all account" do
      account = account_fixture()
      assert Journal.list_account() == [account]
    end

    test "get_account!/1 returns the account with given id" do
      account = account_fixture()
      assert Journal.get_account!(account.id) == account
    end

    test "create_account/1 with valid data creates a account" do
      assert {:ok, %Account{} = account} = Journal.create_account(@valid_attrs)
      assert account.name == "some name"
    end

    test "create_account/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Journal.create_account(@invalid_attrs)
    end

    test "update_account/2 with valid data updates the account" do
      account = account_fixture()
      assert {:ok, %Account{} = account} = Journal.update_account(account, @update_attrs)
      assert account.name == "some updated name"
    end

    test "update_account/2 with invalid data returns error changeset" do
      account = account_fixture()
      assert {:error, %Ecto.Changeset{}} = Journal.update_account(account, @invalid_attrs)
      assert account == Journal.get_account!(account.id)
    end

    test "delete_account/1 deletes the account" do
      account = account_fixture()
      assert {:ok, %Account{}} = Journal.delete_account(account)
      assert_raise Ecto.NoResultsError, fn -> Journal.get_account!(account.id) end
    end

    test "change_account/1 returns a account changeset" do
      account = account_fixture()
      assert %Ecto.Changeset{} = Journal.change_account(account)
    end
  end

  describe "transactions" do
    alias Ofmine.Journal.Transaction

    @valid_attrs %{date: "2010-04-17T14:00:00Z", title: "some title"}
    @update_attrs %{date: "2011-05-18T15:01:01Z", title: "some updated title"}
    @invalid_attrs %{date: nil, title: nil}

    def transaction_fixture(attrs \\ %{}) do
      {:ok, transaction} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Journal.create_transaction()

      transaction
    end

    test "list_transactions/0 returns all transactions" do
      transaction = transaction_fixture()
      assert Journal.list_transactions() == [transaction]
    end

    test "get_transaction!/1 returns the transaction with given id" do
      transaction = transaction_fixture()
      assert Journal.get_transaction!(transaction.id) == transaction
    end

    test "create_transaction/1 with valid data creates a transaction" do
      assert {:ok, %Transaction{} = transaction} = Journal.create_transaction(@valid_attrs)
      assert transaction.date == DateTime.from_naive!(~N[2010-04-17T14:00:00Z], "Etc/UTC")
      assert transaction.title == "some title"
    end

    test "create_transaction/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Journal.create_transaction(@invalid_attrs)
    end

    test "update_transaction/2 with valid data updates the transaction" do
      transaction = transaction_fixture()
      assert {:ok, %Transaction{} = transaction} = Journal.update_transaction(transaction, @update_attrs)
      assert transaction.date == DateTime.from_naive!(~N[2011-05-18T15:01:01Z], "Etc/UTC")
      assert transaction.title == "some updated title"
    end

    test "update_transaction/2 with invalid data returns error changeset" do
      transaction = transaction_fixture()
      assert {:error, %Ecto.Changeset{}} = Journal.update_transaction(transaction, @invalid_attrs)
      assert transaction == Journal.get_transaction!(transaction.id)
    end

    test "delete_transaction/1 deletes the transaction" do
      transaction = transaction_fixture()
      assert {:ok, %Transaction{}} = Journal.delete_transaction(transaction)
      assert_raise Ecto.NoResultsError, fn -> Journal.get_transaction!(transaction.id) end
    end

    test "change_transaction/1 returns a transaction changeset" do
      transaction = transaction_fixture()
      assert %Ecto.Changeset{} = Journal.change_transaction(transaction)
    end
  end
end
