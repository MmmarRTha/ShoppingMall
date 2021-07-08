defmodule ShoppingMallWeb.CartController do
  use ShoppingMallWeb, :controller
  alias ShoppingMall.CartAgent

  def index(conn, params) do
    cart = CartAgent.value()
    render(conn, "cart_index.html", cart: cart)
  end

  def update(conn, params) do
    CartAgent.increment()
    conn
      |> redirect(to: "/cart")
  end
end
