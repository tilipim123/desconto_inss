class CreateProponentes < ActiveRecord::Migration[7.1]
  def change
    create_table :proponentes do |t|
      t.string :nome
      t.string :cpf
      t.date :data_de_nascimento
      t.decimal :salario
      t.decimal :inss

      t.timestamps
    end
  end
end
