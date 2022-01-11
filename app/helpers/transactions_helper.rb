module TransactionsHelper
  def logs_format(t)
    case t.transaction_type
    when 'BUY'
      "BUY | Stock: #{t.stock_symbol} | Price: PHP #{t.stock_price.round(7)} per unit | Number of Units: #{t.units.round(4)} - Total Amount: PHP #{t.amount.round(2)} "
    when 'SELL'
      "SELL | Stock: #{t.stock_symbol} | Price: PHP #{t.stock_price.round(7)} per unit | Number of Units: #{t.units.round(4)} - Total Amount: PHP #{t.amount.round(2)} "
    end
  end
end
