class CreateRoteiros < ActiveRecord::Migration[5.2]
  def change
    create_table :roteiros do |t|
      t.references :usuario
      t.references :Historia
      t.string :titulo

      t.timestamps
    end
  end
end
