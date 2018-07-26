class CreateCursos < ActiveRecord::Migration[5.2]
  def change
    create_table :cursos do |t|
      t.string :nome
      t.float :nota_curso
      t.float :media_alunos
      t.integer :ies_id

      t.timestamps
    end
  end
end
