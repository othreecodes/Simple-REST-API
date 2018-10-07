defmodule SimpleRestApiWeb.Router do
  use SimpleRestApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SimpleRestApiWeb do
    pipe_through :api
  end
end
