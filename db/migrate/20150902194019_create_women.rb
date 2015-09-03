class CreateWomen < ActiveRecord::Migration
  def change
    create_table :women do |t|
      t.string :top
      t.string :bottom
      t.belongs_to :user  
      t.timestamps null: false
    end
  end
end
