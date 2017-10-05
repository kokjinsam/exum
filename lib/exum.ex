# Copied from https://medium.com/@MobileDev360/const-in-elixir-b736d05dde3c
defmodule Exum do
  @moduledoc false

  # credo:disable-for-next-line
  defmacro __using__(which) when is_list(which) do
    quote do
      import unquote(__MODULE__)

      @doc "Shows a list of Enumerable key-value pairs."
      def list do
        unquote which
      end


      @doc "Gets the value of an Enumerable key."
      def value(key) do
        case List.keyfind(unquote(which), key, 0) do
          {_, value} ->
            value

          nil ->
            nil
        end
      end


      @doc "Shows a list of Enumerable values."
      def values do
        Keyword.values unquote(which)
      end


      @doc "Shows a list of Enumerable keys."
      def keys do
        Keyword.keys unquote(which)
      end


      @doc "Gets the key of an Enumerable value."
      def key(value) do
        case Enum.find(unquote(which), nil, fn {k, v} -> v == value end) do
          nil ->
            nil

          {k, v} ->
            k
        end
      end
    end
  end
end
