defmodule ChallengeEctoMigrationWeb.PageController do
  use ChallengeEctoMigrationWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
