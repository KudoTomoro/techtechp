class CreateNews < ActiveRecord::Migration[5.0]
  def change
    create_table :news do |t|
      t.string :date
      t.integer :category
      t.string :title
      t.string :description
      t.string :link

      t.timestamps
    end
  end
end
