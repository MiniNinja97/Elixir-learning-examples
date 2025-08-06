defmodule MyDateTime do
  def date_time_example do
    time = Time.new(16, 30, 0, 0)
    date = Date.new(2025, 1, 1)

    IO.inspect(date, label: "Datum")
    IO.inspect(time, label: "Tid")

     sweden_time = Timex.now("Europe/Stockholm")
    IO.inspect(sweden_time, label: "Lokal tid i Sverige")
	sweden_date = sweden_time |> Timex.to_date()
	IO.inspect(sweden_date, label: "Dagens datum i Sverige")
  end
end
