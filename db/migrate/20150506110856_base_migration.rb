class BaseMigration < ActiveRecord::Migration
  def change
    create_table :items, id: false do |t|
      t.string :name
      t.text :detail
      t.decimal :price
      t.string :image
      t.integer :category_id
    end

    execute "ALTER TABLE items ADD id integer PRIMARY KEY;"

    create_table :categories, id:false do |t|
      t.string :name
    end

    execute "ALTER TABLE categories ADD id integer PRIMARY KEY;"
  end
end
