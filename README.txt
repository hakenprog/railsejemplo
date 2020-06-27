Este ejemplo esta diseñado para hacer una sumatoria de cuando debe cada cliente. Se crea un cliente y después se le asignan servicios consumidos. Cuando se seleccione un cliente, debe poderse visualizar al final la cantidad total de dinero que debe (sumando todos los servicios)

#Crear el proyecto
rails new experiment

#Crear modelos
rails g model client nombre:string 
rails g model service nombre:string costo:float client:references

//Hacer scaffold de los modelos
rails g controller_scaffold client nombre
rails g controller_scaffold service nombre costo client_id

//Realizar la migración para crear la base de datos
rails db:migrate

//Ejecutar servidor
rails s

//Ejecutar consola
rails c

