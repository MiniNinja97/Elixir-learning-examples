defmodule MyTuples do
  def myTuples do
    # memberships = {:bronze, :silver}
    # memberships = Tuple.append(memberships, :gold)

    # prices = {5, 10, 15}
    # avg = Tuple.sum(prices) / tuple_size(prices)
    # IO.puts(avg)

    # IO.puts("Average price from #{elem(memberships,1)} #{elem(memberships, 1)} #{elem(memberships, 2)} is #{avg}")





    # user1 = {"John", :gold}
    # user2 = {"Kim", :silver}
    # user3 = {"Lisa", :bronze}

    # {name, membership} = user1
    # IO.puts("#{name} has a #{membership} membership")

    # {name, membership} = user2
    # IO.puts("#{name} has a #{membership} membership")

    # {name, membership} = user3
    # IO.puts("#{name} has a #{membership} membership")

    memberships = %{
      gold: :gold,
      silver: :silver,
      bronze: :bronze,
      none: :none
    }

    prices = %{
      gold: 25,
      silver: 20,
      bronze: 15,
      none: 0
    }

  users =[
    {"John", memberships.gold},
    {"Kim", memberships.silver},
    {"Lisa", memberships.bronze}
  ]

  Enum.each(users, fn {name, membership} -> IO.puts("#{name} has a #{membership} membership, paying #{prices[membership]}") end)



  end

end
