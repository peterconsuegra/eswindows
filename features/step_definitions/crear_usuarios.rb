Given("Initialized system") do
  TipoIdentificacione.create(descripcion: 'CC')
  TipoIdentificacione.create(descripcion: 'Pasaporte')
  TipoIdentificacione.create(descripcion: 'Visa de Residencia')
end

When("crea un usuario con el nombre {string} apellido {string} identificacion {string} tipo de documento {string}") do |nombre, apellido, identificacion, documento|
  
  visit "/usuarios/new"
  
  sleep 3
  
  select('CC', :from => 'usuario_tipo_identificacione_id')
  
  fill_in "usuario_nombre", :with => nombre
  
  fill_in "usuario_apellido", :with => apellido
  
  fill_in "usuario_identificacion", :with => identificacion
  
  click_button("Create Usuario")
  
  sleep 3
  
end

When("edito usuario con identificacion {string} cambiando el nombre por {string}") do |identificacion, nombre|
  
  usuario = Usuario.find_by_identificacion(identificacion)
  visit "/usuarios/#{usuario.id}/edit"
  fill_in "usuario_nombre", :with => nombre
  
  click_button("Update Usuario")
  
  sleep 3
    
end

When("reviso los logs de usuario con identificacion {string}") do |identificacion|
  visit "/"
  sleep 3
  usuario = Usuario.find_by_identificacion(identificacion)
  visit "/usuarios/#{usuario.id}"
  
  sleep 3
  
end