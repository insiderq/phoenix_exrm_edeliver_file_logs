defmodule PhoenixExrmEdeliverFileLogs.PageController do
  use PhoenixExrmEdeliverFileLogs.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
