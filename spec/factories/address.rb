# frozen_string_literal: true

FactoryBot.define do
  factory :address do
    cep { '04772010' }
    street { 'street 1' }
    neighborhood { 'neighborhood' }
    city { 'São Paulo' }
    state { 'SP' }
  end
end