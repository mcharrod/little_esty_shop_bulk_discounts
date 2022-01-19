@merchant1 = Merchant.find_or_create_by!(name: 'Hair Care')
@merchant2 = Merchant.find_or_create_by!(name: 'Jewelry')

@item_1 = Item.find_or_create_by!(name: "Shampoo", description: "This washes your hair", unit_price: 10, merchant_id: @merchant1.id, status: 1)
@item_2 = Item.find_or_create_by!(name: "Conditioner", description: "This makes your hair shiny", unit_price: 8, merchant_id: @merchant1.id)
@item_3 = Item.find_or_create_by!(name: "Brush", description: "This takes out tangles", unit_price: 5, merchant_id: @merchant1.id)
@item_4 = Item.find_or_create_by!(name: "Hair tie", description: "This holds up your hair", unit_price: 1, merchant_id: @merchant1.id)
@item_7 = Item.find_or_create_by!(name: "Scrunchie", description: "This holds up your hair but is bigger", unit_price: 3, merchant_id: @merchant1.id)
@item_8 = Item.find_or_create_by!(name: "Butterfly Clip", description: "This holds up your hair but in a clip", unit_price: 5, merchant_id: @merchant1.id)

@item_5 = Item.find_or_create_by!(name: "Bracelet", description: "Wrist bling", unit_price: 200, merchant_id: @merchant2.id)
@item_6 = Item.find_or_create_by!(name: "Necklace", description: "Neck bling", unit_price: 300, merchant_id: @merchant2.id)

@customer_1 = Customer.find_or_create_by!(first_name: 'Joey', last_name: 'Smith')
@customer_2 = Customer.find_or_create_by!(first_name: 'Cecilia', last_name: 'Jones')
@customer_3 = Customer.find_or_create_by!(first_name: 'Mariah', last_name: 'Carrey')
@customer_4 = Customer.find_or_create_by!(first_name: 'Leigh Ann', last_name: 'Bron')
@customer_5 = Customer.find_or_create_by!(first_name: 'Sylvester', last_name: 'Nader')
@customer_6 = Customer.find_or_create_by!(first_name: 'Herber', last_name: 'Kuhn')

@invoice_1 = Invoice.find_or_create_by!(customer_id: @customer_1.id, status: 2)
@invoice_2 = Invoice.find_or_create_by!(customer_id: @customer_1.id, status: 2)
@invoice_3 = Invoice.find_or_create_by!(customer_id: @customer_2.id, status: 2)
@invoice_4 = Invoice.find_or_create_by!(customer_id: @customer_3.id, status: 2)
@invoice_5 = Invoice.find_or_create_by!(customer_id: @customer_4.id, status: 2)
@invoice_6 = Invoice.find_or_create_by!(customer_id: @customer_5.id, status: 2)
@invoice_7 = Invoice.find_or_create_by!(customer_id: @customer_6.id, status: 2)

@invoice_8 = Invoice.find_or_create_by!(customer_id: @customer_6.id, status: 1)

@ii_1 = InvoiceItem.find_or_create_by!(invoice_id: @invoice_1.id, item_id: @item_1.id, quantity: 9, unit_price: 10, status: 2)
@ii_2 = InvoiceItem.find_or_create_by!(invoice_id: @invoice_2.id, item_id: @item_1.id, quantity: 1, unit_price: 10, status: 2)
@ii_3 = InvoiceItem.find_or_create_by!(invoice_id: @invoice_3.id, item_id: @item_2.id, quantity: 2, unit_price: 8, status: 2)
@ii_4 = InvoiceItem.find_or_create_by!(invoice_id: @invoice_4.id, item_id: @item_3.id, quantity: 3, unit_price: 5, status: 1)
@ii_6 = InvoiceItem.find_or_create_by!(invoice_id: @invoice_5.id, item_id: @item_4.id, quantity: 1, unit_price: 1, status: 1)
@ii_7 = InvoiceItem.find_or_create_by!(invoice_id: @invoice_6.id, item_id: @item_7.id, quantity: 1, unit_price: 3, status: 1)
@ii_8 = InvoiceItem.find_or_create_by!(invoice_id: @invoice_7.id, item_id: @item_8.id, quantity: 1, unit_price: 5, status: 1)
@ii_9 = InvoiceItem.find_or_create_by!(invoice_id: @invoice_7.id, item_id: @item_4.id, quantity: 1, unit_price: 1, status: 1)
@ii_10 = InvoiceItem.find_or_create_by!(invoice_id: @invoice_8.id, item_id: @item_5.id, quantity: 1, unit_price: 1, status: 1)
@ii_11 = InvoiceItem.find_or_create_by!(invoice_id: @invoice_1.id, item_id: @item_8.id, quantity: 12, unit_price: 6, status: 1)

@transaction1 = Transaction.find_or_create_by!(credit_card_number: 203942, result: 1, invoice_id: @invoice_1.id)
@transaction2 = Transaction.find_or_create_by!(credit_card_number: 230948, result: 1, invoice_id: @invoice_2.id)
@transaction3 = Transaction.find_or_create_by!(credit_card_number: 234092, result: 1, invoice_id: @invoice_3.id)
@transaction4 = Transaction.find_or_create_by!(credit_card_number: 230429, result: 1, invoice_id: @invoice_4.id)
@transaction5 = Transaction.find_or_create_by!(credit_card_number: 102938, result: 1, invoice_id: @invoice_5.id)
@transaction6 = Transaction.find_or_create_by!(credit_card_number: 879799, result: 0, invoice_id: @invoice_6.id)
@transaction7 = Transaction.find_or_create_by!(credit_card_number: 203942, result: 1, invoice_id: @invoice_7.id)
@transaction8 = Transaction.find_or_create_by!(credit_card_number: 203942, result: 1, invoice_id: @invoice_8.id)

@discount = @merchant1.discounts.find_or_create_by!(name: "Valentines day discount", percent_off: 50, min_quantity: 10)
