class CreateFuncionarios < ActiveRecord::Migration[6.0]
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.integer :idade
      t.string :matricula
      t.string :tipo_vaga

      t.timestamps
    end
  end
end
