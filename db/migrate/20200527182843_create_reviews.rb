class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :airline_id
      t.integer :passenger_id
      t.integer :rating
      t.string :content
    end
  end
end
