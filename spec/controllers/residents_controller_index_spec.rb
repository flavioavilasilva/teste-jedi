require 'rails_helper'

RSpec.describe ResidentsController, type: :controller do

  it 'should be able to list all residents' do
    expect_any_instance_of(ResidentList).to receive(:call)
    get :index, params: {}

    expect(response).to be_successful
  end

  it 'should be able to filter residents by full_name' do
    expect_any_instance_of(ResidentList).to receive(:call)
    get :index, params: { search: 'full_name' }

    expect(response).to be_successful
  end
end
