defmodule MyTuples do
  def myTuples do
    memberships = {:bronze, :silver}
    memberships = Tuple.append(memberships, :gold)

    prices = {5, 10, 15}
    avg = Tuple.sum(prices) / tuple_size(prices)
    IO.puts(avg)

    IO.puts("Average price from #{elem(memberships,1)} #{elem(memberships, 1)} #{elem(memberships, 2)} is #{avg}")

    user1 = {"John", :gold}

    {name, membership} = user1

    IO.puts("#{name} has a #{membership} membership")
  end

end
