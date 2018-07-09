defmodule ArkEcosystem.Crypto.Serializers.MultiSignatureRegistrationTest do
  use ExUnit.Case, async: false
  alias ArkEcosystem.Crypto.Serializer

  test "should be ok" do
    transaction = File.read!("test/fixtures/transactions/multi_signature_registration.json")
      |> Jason.decode!(%{ :keys => :atoms })
      |> ArkEcosystem.Crypto.Utils.Underscorer.underscore

    ArkEcosystem.Crypto.Configuration.Network.set(
      ArkEcosystem.Crypto.Networks.Devnet
    )

    actual = Serializer.serialize(transaction)
    assert(actual == transaction.serialized)
  end

end