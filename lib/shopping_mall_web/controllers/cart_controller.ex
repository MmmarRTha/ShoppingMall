defmodule ShoppingMallWeb.CartController do
  use ShoppingMallWeb, :controller

  def index(conn, params) do
    render(conn, "cart_index.html", cart: "This is an assign")
  end
end
