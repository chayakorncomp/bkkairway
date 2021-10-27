defmodule BkkAirway.Router do
  use  Plug.Router

  plug :match
  plug Plug.Parsers, parsers: [:json],
  pass:  ["application/json"],
  json_decoder: Jason
  plug :dispatch

  alias BkkAirway.Venues
  alias BkkAirway.Materials

  get "/hello" do
    send_resp(conn, 200, "world")
  end

  get "/airports" do
    all_airports = Venues.all_airports()

    conn
    |> send_resp(200, Jason.encode!(all_airports))
  end

  get "aircrafts" do
    all_aircraft = Materials.all_aircrafts()

    conn
    |> send_resp(200, Jason.encode!(all_aircraft))
  end

  post "/aircraft" do
    aircraft = Map.new conn.body_params, fn({key, value}) ->
      {String.to_atom(key), value}
    end
    params = Materials.new_aircraft(aircraft)
    |> Materials.add_aircraft
    send_resp(conn, 200, Jason.encode!(params))
    # with {:ok, %{code: code, manufacturer: manufacturer, model: model} = params } <- Materials.new_aircraft(params)


  end

end
