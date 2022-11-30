defmodule OktaTestWeb.OAuthController do
  use OktaTestWeb, :controller
  plug(Ueberauth)

  def callback(%{assigns: %{ueberauth_auth: %{info: user_info}}} = conn, %{
        "provider" => _provider
      }) do
    user_params =
      %{
        email: user_info.email,
        first_name: user_info.first_name,
        last_name: user_info.last_name,
        avatar_url: user_info.image
      }
      |> dbg

    conn
    |> redirect(to: "/")
  end

  def callback(conn, _params) do
    conn
    |> put_flash(:error, "Authentication failed")
    |> redirect(to: "/")
  end
end
