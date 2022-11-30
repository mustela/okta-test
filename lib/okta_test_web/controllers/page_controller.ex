defmodule OktaTestWeb.PageController do
  use OktaTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
