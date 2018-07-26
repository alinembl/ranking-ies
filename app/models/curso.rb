class Curso < ApplicationRecord
  belongs_to :ie
  validates :nome, :nota_curso, :media_alunos, :ies_id, presence:true
end
