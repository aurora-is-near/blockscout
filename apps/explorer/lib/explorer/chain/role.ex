defmodule Explorer.Chain.Role do
  use Ecto.Schema

  schema "roles" do
    field(:role_hash, :binary)
    field(:contract_address, :string)

    has_many(:role_members, Explorer.Chain.RoleMember)

    timestamps()
  end
end
