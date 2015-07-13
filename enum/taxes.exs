defmodule Taxes do

  def read_orders do
    file = File.open!("#{__DIR__}/orders.csv")
    # IO.stream(file, :line)
    # |> Enum.map
    []
  end

  def total(orders, rates) do
    _total(orders, rates)
  end

  defp _total([ head | tail ], rates) do
    [ _apply(head, rates) | _total(tail, rates) ]
  end
  defp _total([], _rates), do: []

  defp _apply(entry, rates) do
    net = Keyword.get(entry, :net_amount)
    rate = Keyword.get(rates, Keyword.get(entry, :ship_to))
    Keyword.put_new(entry, :total_amount, _calculate(net, rate))
  end

  defp _calculate(net, nil), do: net
  defp _calculate(net, rate), do: net * (1 + rate)

end

tax_rates = [ NC: 0.075, TX: 0.08 ]
orders = [
  [ id: 123, ship_to: :NC, net_amount: 100.00 ],
  [ id: 124, ship_to: :OK, net_amount:  35.50 ],
  [ id: 125, ship_to: :TX, net_amount:  24.00 ],
  [ id: 126, ship_to: :TX, net_amount:  44.80 ],
  [ id: 127, ship_to: :NC, net_amount:  25.00 ],
  [ id: 128, ship_to: :MA, net_amount:  10.00 ],
  [ id: 129, ship_to: :CA, net_amount: 102.00 ],
  [ id: 120, ship_to: :NC, net_amount:  50.00 ]
]

Taxes.total(orders, tax_rates)
|> IO.inspect

orders = Taxes.read_orders
|> IO.inspect

Taxes.total(orders, tax_rates)
|> IO.inspect
