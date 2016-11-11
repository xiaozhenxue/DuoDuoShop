class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :category
      t.float :price
      t.text :description
      t.string :id
      t.string :poster
      t.string :poster_url

      t.timestamps
    end
  end
end
