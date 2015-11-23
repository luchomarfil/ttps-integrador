# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Genero.create!(nombre:'Masculino')
Genero.create!(nombre:'Femenino')
Genero.create!(nombre:'Indeterminado')

Person.create!(juridica: false, nombre: 'Roberto Sanchez', cuil_cuit: '20305759482')
Person.create!(juridica: false, nombre: 'Julio Cordoba', cuil_cuit: '20305759423')
Person.create!(juridica: false, nombre: 'Luis Angulo', cuil_cuit: '20305754332')
Person.create!(juridica: false, nombre: 'Maria Cemento', cuil_cuit: '20354322333')
Person.create!(juridica: false, nombre: 'Lucas Gorobato', cuil_cuit: '20765432312')
Person.create!(juridica: false, nombre: 'Esteban Eliseo', cuil_cuit: '20302753243')
