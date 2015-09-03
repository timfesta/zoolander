class CreateMen < ActiveRecord::Migration
  def change
    create_table :men do |t|
      t.string :top
      t.string :bottom
      t.belongs_to :user
      t.timestamps null: false
    end
  end
end
