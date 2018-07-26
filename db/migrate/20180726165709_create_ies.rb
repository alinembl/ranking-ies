class CreateIes < ActiveRecord::Migration[5.2]
  def change
    create_table :ies do |t|
      t.string :nome
      t.float :nota_geral

      t.timestamps
    end
  end
end
