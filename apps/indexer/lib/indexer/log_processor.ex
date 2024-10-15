defmodule Indexer.EventSignatures do
  @role_granted_event "RoleGranted(bytes32,address,address)"
  @role_revoked_event "RoleRevoked(bytes32,address,address)"

  def role_granted_signature do
    ExthCrypto.Hash.keccak_256(@role_granted_event)
  end

  def role_revoked_signature do
    ExthCrypto.Hash.keccak_256(@role_revoked_event)
  end
end
