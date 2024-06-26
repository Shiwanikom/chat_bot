class CreatePayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments do |t|
      t.references :user, null: false, foreign_key: true
      t.string :stripe_id
      t.string :payment_transaction_id
      t.string :payment_type
      t.integer :amount
      t.boolean :status

      t.timestamps
    end
  end
end
