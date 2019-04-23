class CreateTipoIdentificaciones < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_identificaciones do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
