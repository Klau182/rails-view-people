# View people

+ inicializar proyecto con:

```shell
$ rails new view-people -d postgresql
```

*Creación de base de datos postgresql*
*bin/rails db:create*


*creamos un método llamado index dentro de home que es el controlador ,*

```rb
class HomeController < ApplicationController
    def index
    end
end
```

*método*

```rb
def index
end
```

*rutas*
```rb
root "home#index"
```
## Crear controladores de manera manual


*crearemos un modelo*

*generar scaffold user, genera modelo, vista, controlador y rutas(recursos)*

rails g scaffold user name last_name age:integer

*migrar base de datos*

rails db:migrate

*consultar por un usuario previamente creado en la vista*

```shell
3.0.0 :001 > User.all
  User Load (0.6ms)  SELECT "users".* FROM "users"
 =>                                                         
[#<User:0x00007f8da08b35f0                                  
  id: 1,                                                    
  name: "anita",                                            
  last_name: "mezza",                                       
  age: 33,                                                  
  created_at: Sun, 14 Aug 2022 22:22:24.966166000 UTC +00:00,
  updated_at: Sun, 14 Aug 2022 22:22:24.966166000 UTC +00:00>] 
3.0.0 :002 > 

```

*insertar datos desde la consola*




```shell
3.0.0 :002 > user = User.create(name: "pedrito", last_name: "fuentes", age: 22)
  TRANSACTION (0.2ms)  BEGIN
  User Create (0.8ms)  INSERT INTO "users" ("name", "last_name", "age", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["name", "pedrito"], ["last_name", "fuentes"], ["age", 22], ["created_at", "2022-08-14 22:31:28.729661"], ["updated_at", "2022-08-14 22:31:28.729661"]]                
  TRANSACTION (19.5ms)  COMMIT                                                            
 =>                                                                                       
#<User:0x000055a771788570                                                                 
...                      
```