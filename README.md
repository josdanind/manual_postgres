# Manual SQL

En este manual, te guaré a través de los conceptos fundamentales de SQL, que es el lenguaje utilizado para gestionar bases de datos relacionales. 

Para utilizar SQL, utilizaremos PostgreSQL, una potente base de datos relacional de código abierto que es ampliamente utilizado en el mundo empresarial y de la tecnología. PostgreSQL es una base de datos confiable, segura y escalable que cuenta con una gran comunidad de desarrolladores y usuarios en todo el mundo.

Además, utilizaremos Python, un lenguaje de programación que es ampliamente utilizado en la ciencia de datos y en la programación de aplicaciones web. Python cuenta con la librería Psycopg2 que nos permiten conectarnos y trabajar con PosgreSQL de manera fácil.

# Requerimientos

- Docker y Docker Compose

# Ejecutar Repositorio de Manera Local

## 1. Clonar o descargar el repositorio

```
git@github.com:josdanind/manual_postgrest.git
```

## 2. Levantar contenedor de Postgresql

1. En el interior de la carpeta docker, ejecutar:

  ```
  docker compose up
  ```
  
  > Si quieres cambiar las variables de entorno, debes modificar el fichero `.env`.

## 3 Crear entorno virtual

En la carpeta raiz del proyecto hacemos los siguiente:

1. Crear entorno virtual

  ```
  python3 -m venv venv
  ```
2. Activar el entorno virtual

  ```
  source venv/bin/activate
  ```
## 4. Instalar librerias

  ```
  pip install -r requirements.txt
  ```

## 5. Abrir repositorio en Visual Studio Code

En la carpeta raiz del proyecto ejecutamos:

```
code .
```

La documentación esta en notebooks de jupyter al interior de la capeta `Manual`. Cuando se intenta ejecutar el código de una celda vscode te pregunta que si quieres ejecutar el programa usando el entorno virtual que creaste, lo seleccionas. A continuación, vscode instalara las dependencias necesarias para ejecutar los notebooks.
