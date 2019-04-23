class Usuario < ApplicationRecord
  
  has_many :logs
  belongs_to :tipo_identificacione
  
  after_update :update_log
  after_create :create_log
  
  def create_log
    Log.create(accion: 'Usuario Creado', usuario_id: self.id, fecha: DateTime.now)
  end
  
  def update_log
    Log.create(accion: 'Usuario Actualizado', usuario_id: self.id, fecha: DateTime.now)
  end
  
end
