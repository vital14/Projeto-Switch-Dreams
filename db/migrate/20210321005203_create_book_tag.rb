class CreateBookTag < ActiveRecord::Migration[6.1]
  def change
    create_table :book_tags do |t|

      t.timestamps
    end
  end
end
