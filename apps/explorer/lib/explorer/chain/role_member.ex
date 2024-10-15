defmodule Explorer.Chain.RoleMember do
  use Ecto.Schema

  schema "role_members" do
    belongs_to(:role, Explorer.Chain.Role)
    field(:member_address, :string)

    timestamps()
  end
end
