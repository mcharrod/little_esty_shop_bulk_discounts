require 'rails_helper'

describe 'discount index' do
  before do
    @merchant1 = Merchant.create!(name: 'Hair Care')

    @discount_a = @merchant1.discounts.create!(min_quantity: 10, percent_off: 20, name: "first discount")
    @discount_b = @merchant1.discounts.create!(min_quantity: 15, percent_off: 30, name: "second discount")

    visit merchant_discounts_path(@merchant1)
  end

  it 'displays all discounts' do
    expect(page).to have_content(@discount_a.name)
    expect(page).to have_content("Minimum purchase threshold: #{@discount_a.min_quantity}")
    expect(page).to have_content("Percentage discount: #{@discount_a.percent_off}")
    expect(page).to have_content(@discount_b.name)
    expect(page).to have_content("Minimum purchase threshold: #{@discount_b.min_quantity}")
    expect(page).to have_content("Percentage discount: #{@discount_b.percent_off}")
  end
end
