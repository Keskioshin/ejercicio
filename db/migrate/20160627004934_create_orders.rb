class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.column :completed_at, :datetime
      t.column :state, :string
      t.column :total, :float
      t.timestamps null: false
    end
  end
end
