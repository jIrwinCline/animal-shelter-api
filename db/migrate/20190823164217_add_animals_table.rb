class AddAnimalsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :name
      t.string :species
      t.string :shelter
    end
  end
end
