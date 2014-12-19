class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.boolean :paid
      t.float :amount
      t.string :currency
      t.boolean :refunded
      t.belongs_to :customer, index: true
      t.boolean :disputed

      t.timestamps
    end
  end
end
