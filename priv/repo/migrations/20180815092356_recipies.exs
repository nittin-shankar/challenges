defmodule ChallengeEctoMigration.Repo.Migrations.Recipies do
  use Ecto.Migration

  def create_recipie_table do
    create table("recipies") do
      add :name, :string
      add :category, :string
    end
  end
end
