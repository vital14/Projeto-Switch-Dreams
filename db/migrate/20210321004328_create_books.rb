class CreateBooks < ActiveRecord::Migration[6.1]
  def change
  create_table :books do |t|
    t.string :titulo
    t.string :ano
    t.string :autor

    t.timestamps
  end
end
end

