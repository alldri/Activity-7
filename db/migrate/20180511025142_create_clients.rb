class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.float :current_weight
      t.float :height
      t.string :gender
      t.string :email_address

      t.timestamps
    end
  end
end
