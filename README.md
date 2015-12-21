# ttps-integrador
Trabajo integrador para la catedra de Ruby.

#Descripcion
El proyecto surge como trabajo final de la cursada de Ruby. El objetivo principal es el de administrar los movimientos de un estudio contable.
Al cual le interesa administrar clientes, y como esos clientes facturan a las personas. Muestra ademas estadísticas sobre las ventas realizadas por los clientes. Y permite administrar toda la informacion del sistema de una forma cómoda.
#Requerimientos
```
Linux
git
Ruby >= 2.2.3
Rails gem >= 4.2
Bundle gem >= 1.10
sqlite3

```
#Instalacion
+ Obtener los fuentes
```shell
git clone https://github.com/luchomarfil/ttps-integrador/entrega
```
+ Hacer un checkout del tag `entrega`

+ Descargar las dependencias del proyecto. Desde la carpeta Chacarera, que es donde se encuentra el Gemfile
```shell
ttps-integrador/Chacarera$ gem install bundle
ttps-integrador/Chacarera$ bundle
```

#Utilizacion
Tests
--
Para correr los tests correr el siguiente comando
```shell
ttps-integrador/Chararera$ bundle exec rake db:migrate
ttps-integrador/Chararera$ bundle exec rake test
```

Aplicacion
--
Para correr la aplicacion se debe primero correr las migraciones. Luego alimentar la base de datos con seeds y por ultimo levantar el servidor Ruby
```shell
ttps-integrador/Chararera$ bundle exec rake db:migrate
ttps-integrador/Chararera$ bundle exec rake db:seed
ttps-integrador/Chararera$ bundle exec rails s
```
