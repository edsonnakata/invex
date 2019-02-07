class CreateCapitulos < ActiveRecord::Migration[5.2]
  def change
    create_table :capitulos do |t|
      t.string :save
      t.references :usuarios, foreign_key: true
      t.references :Historia, foreign_key: true

      t.timestamps
    end
  end
end
