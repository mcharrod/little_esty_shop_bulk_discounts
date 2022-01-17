require 'rails_helper'

describe 'discount show page' do
  before do
    @merchant1 = Merchant.create!(name: 'Hair Care')

    @discount_a = @merchant1.discounts.create!(min_quantity: 10, percent_off: 20, name: "first discount")
    @discount_b = @merchant1.discounts.create!(min_quantity: 15, percent_off: 30, name: "second discount")

    visit merchant_discounts_path(@merchant1)
  end

  it 'path exists' do
    within '#discount-list' do
      within "#discount-#{@discount_b.id}" do
        click_link ("View #{@discount_b.name} info")
        expect(current_path).to eq("/merchant/#{@merchant1.id}/discounts/#{@discount_b.id}")
      end
    end
  end
end