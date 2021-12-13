class CreateTransfers < ActiveRecord::Migration[6.1]
  def change
    create_table :transfers do |t|
      t.datetime :date
      t.string :concept
      t.float :active
      t.float :pasive
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
