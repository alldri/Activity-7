class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.integer :client_id
      t.integer :trainer_id
      t.integer :duration_mins
      t.date :date_of_workout
      t.decimal :paid_amount

      t.timestamps
    end
  end
end
