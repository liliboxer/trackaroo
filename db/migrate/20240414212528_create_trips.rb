class CreateTrips < ActiveRecord::Migration[7.1]
  def change
    create_table :trips do |t|
      t.string :company
      t.integer :job_number
      t.decimal :miles
      t.decimal :reimbursement_rate, precision: 4, scale: 2
      t.decimal :estimated_refund, precision: 10, scale: 2
      t.string :start_point
      t.string :end_point

      t.timestamps
    end
  end
end
