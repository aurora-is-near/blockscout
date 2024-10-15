defmodule Explorer.Repo.Migrations.CreateRoles do
  use Ecto.Migration

  def change do
    create table(:roles) do
      add(:role_hash, :binary)
      add(:contract_address, :string)

      timestamps()
    end

    create(index(:roles, [:role_hash, :contract_address], unique: true))
  end
end
