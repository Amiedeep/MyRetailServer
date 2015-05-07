class BaseMigration < ActiveRecord::Migration
  def change
    create_table :items, :id => false do |t|
      t.integer :id, :primary_key => true
      t.string :name
      t.text :detail
      t.decimal :price
      t.string :image
      t.belongs_to :category
    end

    create_table :categories, :id => false do |t|
      t.integer :id, :primary_key => true
      t.string :name
    end
  end
end
