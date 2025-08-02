defmodule Example do
  use Application

  def start(_type, _args) do
    Example.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

 def main do
  name = "Emma"
  status = Enum.random([:gold, :silver, :bronze])

  if status === :gold do
    IO.puts("Welcome to the fancy launch, #{name}")
  else
    IO.puts("Get lost")
  end
end
end
