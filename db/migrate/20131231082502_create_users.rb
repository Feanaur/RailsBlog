class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :post, index: true
      t.references :comment, index: true

      t.timestamps
    end
  end
end
