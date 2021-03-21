class Tag < ApplicationRecord
  has_many :books, through: :books_tags
  enum categoria: { semestre: 0, disciplina: 1, outros: 2, licenciatura: 3, bacharelado: 4 }
end

