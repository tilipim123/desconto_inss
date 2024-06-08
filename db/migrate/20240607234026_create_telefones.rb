class CreateTelefones < ActiveRecord::Migration[7.1]
  def change
    create_table :telefones do |t|
      t.string :numero
      t.string :tipo
      t.references :proponente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
