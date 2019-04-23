class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.integer :identificacion
      t.integer :tipo_identificacione_id

      t.timestamps
    end
  end
end
