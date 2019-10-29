class CreateVeiculos < ActiveRecord::Migration[6.0]
  def change
    create_table :veiculos do |t|
      t.string :funcionario
      t.string :modelo
      t.string :cor
      t.string :placa
      t.boolean :autorizacao
      t.date :data_expedicao_autorizacao
      t.date :data_expira_autorizacao

      t.timestamps
    end
  end
end
