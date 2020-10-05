defmodule OfmineWeb.Schema do
  use Absinthe.Schema

  import_types(Absinthe.Type.Custom)
  import_types(OfmineWeb.Schema.Journal)

  query do
    @desc "Simple query to check if server working without touching any business logic"
    field :ping, non_null(:string) do
      resolve(fn _, _ -> {:ok, "PONG"} end)
    end

    import_fields(:journal_queries)
  end
end
