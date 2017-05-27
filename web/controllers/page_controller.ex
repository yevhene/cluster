defmodule Cluster.PageController do
  use Cluster.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
