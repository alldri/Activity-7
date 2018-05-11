class CreateTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
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
