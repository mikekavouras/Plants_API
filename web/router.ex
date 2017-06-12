defmodule Plants.Router do
  use Plants.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Plants do
    pipe_through :browser

    get "/", PageController, :index
  end

  scope "/api", Plants.Api, as: :api do
    pipe_through :api

    scope "/v1", V1, as: :v1 do
      resources "/readings", ReadingController, only: [:index, :create]
    end
  end
end
