@crear_usuarios
#bundle exec cucumber --profile default --guess --tags @crear_usuarios

Feature: Crear Usuarios
  Crear usuarios para el ejemplo de Energia Solar

	Background:  
	  	Given Initialized system

	Scenario: Crear Usuarios
		When crea un usuario con el nombre "Pedro" apellido "Consuegra" identificacion "72344448" tipo de documento "CC"
		And crea un usuario con el nombre "Luis" apellido "Gonzalez" identificacion "11234567" tipo de documento "CC"
		And edito usuario con identificacion "11234567" cambiando el nombre por "Luis F"
		And reviso los logs de usuario con identificacion "11234567"		