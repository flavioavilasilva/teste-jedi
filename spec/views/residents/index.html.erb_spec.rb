# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'residents/index', type: :view do
  it 'displays a list of residents' do
    residents = FactoryBot.create_list(:resident, 5)

    assign(:residents, residents)

    render

    assert_select 'table' do
      assert_select 'tr.resident_row', 5
    end
  end
end