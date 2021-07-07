defmodule ShoppingMall.ShoppingCart do
  defstruct [
    count: 0
  ]

  def add(cart) do
    %{cart | count: cart.count + 1}
  end

  def substract(cart) do
    %{cart | count: cart.count - 1}
  end
end
