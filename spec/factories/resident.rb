# frozen_string_literal: true

FactoryBot.define do
  factory :resident do
    full_name { 'full_name' }
    cpf { '98835307066' }
    cns { '187329617340002' }
    email { 'test@test.com' }
    phone_number { '11999999999' }
    birth_date { Time.now - 26.years }
    address { FactoryBot.build(:address) }
  end
end