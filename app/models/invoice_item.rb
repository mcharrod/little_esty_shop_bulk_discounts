class InvoiceItem < ApplicationRecord
  validates_presence_of :invoice_id,
                        :item_id,
                        :quantity,
                        :unit_price,
                        :status

  belongs_to :invoice
  belongs_to :item

  enum status: [:pending, :packaged, :shipped]

  def self.incomplete_invoices
    invoice_ids = InvoiceItem.where("status = 0 OR status = 1").pluck(:invoice_id)
    Invoice.order(created_at: :asc).find(invoice_ids)
  end

  # returns an array of invoice items which meet or exceed
  # the discount quantity threshold
  def meets_quantity
    InvoiceItem.joins(item: [{ merchant: :discounts }])
    .where("quantity >= min_quantity")
  end

  # checks if meets_quantity array includes this particular invoice item 
  def discounted?
     meets_quantity.include?(self)
  end
end
