class CreateCutters < ActiveRecord::Migration[5.0]
  def change
    create_table :cutters do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
