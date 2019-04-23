class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.integer :usuario_id
      t.string :accion
      t.datetime :fecha

      t.timestamps
    end
  end
end
