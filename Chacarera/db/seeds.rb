# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Gender.create!(name:'Masculino')
Gender.create!(name:'Femenino')
Gender.create!(name:'Indeterminado')

Client.create!(cuil_cuit:"20305759482",dni:30575948,name:"Luciano",surname:"Marfil",gender_id:1,birth_date:"1983-11-28", contacts: [ Email.new(value:"lmarfil@gmail.com")])
Client.create!(cuil_cuit:"20307812542",dni:30781254,name:"Carlos",surname:"Sánchez",gender_id:1,birth_date:"1980-01-01", contacts: [ Skype.new(value:"carlos.sanchez")])
Client.create!(cuil_cuit:"20182321542",dni:18232154,name:"Edmon",surname:"Sabiondo",gender_id:1,birth_date:"1970-01-01", contacts: [ Address.new(value:"13 y 44 nro 788")])
Client.create!(cuil_cuit:"20256589542",dni:25658954,name:"Peppa",surname:"Pig",     gender_id:3,birth_date:"1990-01-01", contacts: [ Cell.new(value:"1555255625")])

Person.create!(legal: false, name: 'Roberto Sanchez', cuil_cuit: '20305759482')
Person.create!(legal: false, name: 'Julio Cordoba',   cuil_cuit: '20305759423')
Person.create!(legal: false, name: 'Luis Angulo',     cuil_cuit: '20305754332')
Person.create!(legal: false, name: 'Maria Cemento',   cuil_cuit: '20354322333')
Person.create!(legal: false, name: 'Lucas Gorobato',  cuil_cuit: '20765432312')
Person.create!(legal: false, name: 'Esteban Eliseo',  cuil_cuit: '20302753243')

# 2015
Bill.create(client_id:1,person_id:1,concept:"Venta 1",amount:100,invoice_date:"2015-11-20")
Bill.create(client_id:1,person_id:1,concept:"Venta 2",amount:100,invoice_date:"2015-10-20")
Bill.create(client_id:1,person_id:1,concept:"Venta 3",amount:100,invoice_date:"2015-09-20")
Bill.create(client_id:1,person_id:2,concept:"Venta 4",amount:100,invoice_date:"2015-08-20")
Bill.create(client_id:1,person_id:2,concept:"Venta 5",amount:100,invoice_date:"2015-08-21")
# 2014
Bill.create(client_id:1,person_id:2,concept:"Venta 6",amount:100,invoice_date:"2014-08-20")
Bill.create(client_id:1,person_id:1,concept:"Venta 7",amount:100,invoice_date:"2014-09-20")
