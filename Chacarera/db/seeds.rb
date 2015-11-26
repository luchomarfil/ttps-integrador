# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Gender.create!(nombre:'Masculino')
Gender.create!(nombre:'Femenino')
Gender.create!(nombre:'Indeterminado')

Client.create!(cuil_cuit:"20305759482",dni:30575948,nombre:"Luciano",apellido:"Marfil",telefono:"4214554",email:"luchomarfil@gmail.com",gender_id:1)
Client.create!(cuil_cuit:"20307812542",dni:30781254,nombre:"Carlos",apellido:"Sánchez",telefono:"4585654",email:"r.sanchez@gmail.com",gender_id:1)
Client.create!(cuil_cuit:"20182321542",dni:18232154,nombre:"Edmon",apellido:"Sabiondo",telefono:"4214554",email:"e.sabiondo@gmail.com",gender_id:1)
Client.create!(cuil_cuit:"20256589542",dni:25658954,nombre:"Peppa",apellido:"Pig",     telefono:"4588565",email:"peppa.pig@gmail.uk",gender_id:3)

Person.create!(juridica: false, nombre: 'Roberto Sanchez', cuil_cuit: '20305759482')
Person.create!(juridica: false, nombre: 'Julio Cordoba', cuil_cuit: '20305759423')
Person.create!(juridica: false, nombre: 'Luis Angulo', cuil_cuit: '20305754332')
Person.create!(juridica: false, nombre: 'Maria Cemento', cuil_cuit: '20354322333')
Person.create!(juridica: false, nombre: 'Lucas Gorobato', cuil_cuit: '20765432312')
Person.create!(juridica: false, nombre: 'Esteban Eliseo', cuil_cuit: '20302753243')
