defmodule Explorer.Repo.Migrations.CreateRoleMembers do
  use Ecto.Migration

  def change do
    create table(:role_members) do
      add(:role_id, references(:roles, on_delete: :delete_all))
      add(:member_address, :string)

      timestamps()
    end

    create(index(:role_members, [:role_id, :member_address], unique: true))
  end
end
