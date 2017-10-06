class CreateCookbooks < ActiveRecord::Migration[5.1]
  def change
    create_table :cookbooks do |t|
      t.string :name
      t.string :description
      t.string :text
      t.string :time
      t.string :int
      t.int :serving

      t.timestamps
    end
  end
end
