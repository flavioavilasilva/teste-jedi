# spec/services/post_service_spec.rb
require 'rails_helper'

RSpec.describe ResidentList, type: :service do
  let(:residents) { create_list(:resident, 5) }

  describe '#call' do
    context 'when has no filters' do
      it 'returns all residents' do
        FactoryBot.create_list(:resident, 5)

        residents = ResidentList.new('').call

        expect(residents.size).to eq 5
      end
    end

    context 'when has filters' do
      it 'returns the only resident with the full name of the filter' do
        FactoryBot.create(:resident, full_name: 'Joana')
        FactoryBot.create(:resident, full_name: 'Pedro')
        
        residents = ResidentList.new('Joana').call

        expect(residents.size).to eq 1
      end
    end
  end
end