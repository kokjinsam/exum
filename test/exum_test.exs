defmodule ExumTest do
  @moduledoc false

  use ExUnit.Case

  defmodule Colors do
    @moduledoc false

    use Exum, green: 0, yellow: 1, red: 2
  end

  test "list all enums" do
    assert Colors.list() == [green: 0, yellow: 1, red: 2]
  end
  test "list all keys" do
    assert Colors.keys() == [:green, :yellow, :red]
  end
  test "list all values" do
    assert Colors.values() == [0, 1, 2]
  end
  test "get a key" do
    assert Colors.key(2) == :red
  end
  test "get a value" do
    assert Colors.value(:red) == 2
  end
end
