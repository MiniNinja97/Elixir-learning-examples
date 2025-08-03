defmodule Example do
  use Application

  def start(_type, _args) do
    Example.main()
    ExampleTwo.maintwo()
    ExampleNumbers.numbers()
    MyDateTime.date_time_example()
    Supervisor.start_link([], strategy: :one_for_one)
  end

 def main do
  name = "Emma"
  status = Enum.random([:gold, :silver, :bronze])

  # if status === :gold do
  #   IO.puts("Welcome to the fancy launch, #{name}")
  # else
  #   IO.puts("Get lost")
  # end
  case status do
    :gold -> IO.puts("Welcome to the fancy launch, #{name}")
    :"not a member" -> IO.puts("Get subscribed")
    _-> IO.puts("Get out")
  end
end
end
