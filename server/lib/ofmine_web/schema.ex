defmodule OfmineWeb.Schema do
  use Absinthe.Schema

  import_types(Absinthe.Type.Custom)

  query do
    field :ping, non_null(:string) do
      resolve(fn _, _ -> {:ok, "PONG"} end)
    end
  end
end
