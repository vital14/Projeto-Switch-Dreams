class AddBookRefToTags < ActiveRecord::Migration[6.1]
  def change
    add_reference :tags, :book, null: false, foreign_key: true
  end
end
