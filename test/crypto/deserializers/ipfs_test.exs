defmodule ArkEcosystem.Crypto.Deserializers.IPFSTest do
  use ExUnit.Case, async: false
  alias ArkEcosystem.Crypto.Deserializer
  alias ArkEcosystem.Test.TestHelper

  @tag :skip
  test "should be ok if signed with a passphrase" do
    fixture = TestHelper.read_fixture("ipfs", "passphrase")
    actual = Deserializer.deserialize(fixture)

    assert(actual.id == fixture.data.id)
  end

end
