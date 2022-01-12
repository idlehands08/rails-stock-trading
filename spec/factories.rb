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

end