class AddReferences < ActiveRecord::Migration[6.1]
  def change
    add_reference :book_tags, :book, null: false, foreign_key: true
    add_reference :book_tags, :tags, null: false, foreign_key: true
  end
end
