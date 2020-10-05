defmodule OfmineWeb.Schema.Helpers do
  @moduledoc """
  Helpers for building schemas.
  """

  defmacro list_of!(type) do
    quote do
      non_null(list_of(non_null(unquote(type))))
    end
  end
end
