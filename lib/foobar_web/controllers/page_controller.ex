defmodule FoobarWeb.PageController do
  use FoobarWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def fizzbuzz(conn, %{"foo" => foo, "bar" => bar }) do
    message = case {foo, bar} do
      { "true", "true" } -> Foobar.foobarFunction()
      { "true", "false"} -> Foobar.fooFunction()
      { "false", "true" } -> Foobar.barFunction()
      _ -> ""
    end
    json(conn, %{ message: message })
  end
end
