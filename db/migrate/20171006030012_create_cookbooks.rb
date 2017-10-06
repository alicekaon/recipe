class CreateCookbooks < ActiveRecord::Migration[5.1]
  def change
    create_table :cookbooks do |t|
      t.string :name
      t.text :description
      t.integer :time
      t.integer :serving

      t.timestamps
    end
  end
end
