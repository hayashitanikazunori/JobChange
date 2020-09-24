class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :company_name
      t.string :company_link
      t.date :application_date
      t.date :response_date
      t.string :status
      t.string :application_medium
      t.string :memo

      t.timestamps
    end
  end
end
