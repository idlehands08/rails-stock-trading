FactoryBot.define do
  factory :user do
    email { 'ayaya@ayaya.com' }
    first_name { 'Ayaya' }
    last_name { 'Test' }
    password { '123123' }
  end

  factory :admin do
    email { 'admin@test.com' }
    password { '123123' }
  end

  factory :stock do
    stock_symbol { 'AAA' }
    current_price { 20123.00 }
  end

  factory :buy_stock, class: 'Stock_Holding' do
    user_id { 2 }
    stock_symbol { 'AAA' }
    stock_price { 50.00 }
    amount { 2 }
    stock_id { 2 }
    transaction_type { 'BUY' }
    units { 1 }
  end

  factory :sell_stock, class: 'Stock_Holding' do
    user_id { 2 }
    stock_symbol { 'AAA' }
    stock_price { 50.00 }
    amount { 1.5 }
    stock_id { 2 }
    transaction_type { 'SELL' }
    units { 1 }
  end
end