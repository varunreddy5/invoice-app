class CreateInvoices < ActiveRecord::Migration[5.2]
  def up
    create_table :invoices do |t|
      t.decimal :amount, :precision => 15, :scale => 2, :default => 0
      t.string :company
      t.string :contragent
      t.string :currency
      t.date :date

      t.timestamps
    end
  end
  def down
    drop_table :invoices
  end
end
