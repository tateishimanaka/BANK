class CreateIndividualProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :individual_projects do |t|
      
      t.integer :store_id
      t.string :last_name
      t.string :first_name
      t.string :last_name_kana
      t.string :first_name_kana
      t.integer :collateral_id
      t.integer :use_of_fund_id
      t.integer :fund_type_id
      t.integer :loan
      t.integer :span
      t.integer :month_payment
      t.integer :last_mont_payment
      t.string :interest_rate
      t.string :joint_guarantor
      t.integer :own_resource
      t.string :end_day
      t.string :date
      t.string :appoint_date
      t.boolean :is_active, default: true

      t.timestamps
    end
  end
end
