require 'rails_helper'

RSpec.describe ResidentsController, type: :controller do
  it 'should be able to update a resident' do
    resident = FactoryBot.create(:resident)

    patch :update, params: {
      id: resident.id,
      resident: {
        full_name: 'Updated Name'
      }
    }

    expect(resident.reload.full_name).to be == 'Updated Name'
    expect(response).to redirect_to(residents_path)
  end
end
