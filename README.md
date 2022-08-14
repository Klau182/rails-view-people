# view people

+ inicializar proyecto con

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