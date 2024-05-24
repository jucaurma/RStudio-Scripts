---
  tÃ­tulo: "LecciÃ³n 2: Importar y trabajar con datos"
archivo de salida: html_document
---
  
  ## Contexto de esta actividad / IntroducciÃ³n
  A esta altura, ya tienes experiencia en ingresar datos manualmente en `R` para
crear un marco de datos. Como analista de datos, tambiÃ©n serÃ¡ habitual que 
importes datos de archivos externos a tu consola de `R` y los utilices para 
crear un marco de datos para analizarlos. En esta actividad, aprenderÃ¡s cÃ³mo 
importar datos desde fuera de `R` usando la funciÃ³n `read_csv()`. Luego, una 
vez que hayas importado un archivo de datos, usarÃ¡s funciones `R` para 
manipular e interactuar con esos datos.

Puedes empezar a importar y explorar datos con los bloques de cÃ³digo en el 
espacio RMD. Para interactuar con el bloque de cÃ³digo, haz clic en la flecha 
verde en la esquina superior derecha del bloque. El cÃ³digo ejecutado aparecerÃ¡
en el espacio RMD y en tu consola. 

A lo largo de esta actividad, tambiÃ©n tendrÃ¡s la oportunidad de practicar 
escribir tu propio cÃ³digo haciendo cambios en los bloques de cÃ³digo tÃº mismo.
Si encuentras un error o te trabas, siempre puedes consultar el archivo .rmd 
Lesson2_Import_Solutions en la carpeta "Solutions" bajo "Week 3" para ver el 
cÃ³digo correcto.

## El escenario

En este escenario, eres un analista de datos jÃºnior que trabaja para una 
empresa de reservas hoteleras. Se te pidiÃ³ que limpies un archivo .csv que se
creÃ³ despuÃ©s de consultar una base de datos para combinar dos tablas 
diferentes de hoteles distintos. Para aprender mÃ¡s acerca de estos datos, 
necesitarÃ¡s usar funciones para tener una vista previa de la estructura de los
datos, que incluye sus columnas y filas. AdemÃ¡s, deberÃ¡s usar funciones de 
limpieza bÃ¡sicas para preparar estos datos para su anÃ¡lisis.

## Paso 1: Cargar paquetes

Comienza instalando el paquete requerido. Si ya instalaste y cargaste 
`tidyverse` en esta sesiÃ³n, puedes saltearte los bloques de cÃ³digo en este paso.

```{r}
install.packages("tidyverse")
```

Una vez que un paquete estÃ¡ instalado, podemos cargarlo ejecutando la funciÃ³n
`library()` con el nombre del paquete dentro de los parÃ©ntesis:
  
  ```{r}
library(tidyverse)
```

## Paso 2: Importar datos

Uno de los tipos de archivo mÃ¡s comunes que los analistas de datos importan 
a `R` son los archivos de valores separados por comas o archivos .csv.
El archivo `readr` del paquete de la biblioteca `tidyverse` tiene diversas 
funciones para "cargar" o importar datos, entre ellos archivos .csv y otras
fuentes externas. 

En el bloque que aparece a continuaciÃ³n, usa la funciÃ³n `read_csv()` para 
importar datos de un archivo .csv llamado "hotel_bookings.csv" en la carpeta 
del proyecto y guÃ¡rdalos como un marco de datos llamado `bookings_df`: 
  
  Si esta lÃ­nea provoca un error, copia la lÃ­nea 
setwd("projects/Course 7/Week 3") antes de ella. 

Los resultados se mostrarÃ¡n como especificaciones de columna:
  
  ```{r}
bookings_df <- read_csv("Documents/RStudio Scripts/hotel_bookings.csv")
```

Ahora que tienes el `bookings_df`, puedes trabajar con Ã©l usando todas las 
funciones `R` que aprendiste hasta ahora. 

## Paso 3: Inspeccionar y limpiar datos

Una funciÃ³n comÃºn que puedes usar para previsualizar los datos es la funciÃ³n
`head()`, que muestra las columnas y las primeras filas de datos. Verifica la 
funciÃ³n `head()` ejecutando el bloque que aparece a continuaciÃ³n:
  
  ```{r}
head(bookings_df)
```

AdemÃ¡s de `head()`, existen otras funciones Ãºtiles para resumir o tener una
vista previa de tu marco de datos. Por ejemplo, la funciÃ³n `str()` ofrece 
resÃºmenes de cada columna en tus datos organizados horizontalmente. Verifica 
la funciÃ³n `srt()` ejecutando el bloque de cÃ³digo que aparece a continuaciÃ³n:
  
  ```{r}
str(bookings_df)
```

Para averiguar quÃ© columnas tienes en tu marco de datos, prueba ejecutar la
funciÃ³n `colnames()` en el bloque de cÃ³digo que aparece a continuaciÃ³n:
  
  ```{r}
colnames(bookings_df)
```

Si quieres crear otro marco de datos usando `bookings_df` que se enfoca en la
tarifa diaria promedio, que se indica como `adr` en el marco de datos y
`adults`, puedes usar el siguiente bloque de cÃ³digo para hacerlo:
  
  ```{r}
new_df <- select(bookings_df, `adr`, adults)
```

Para crear nuevas variables en tu marco de datos, puedes usar la funciÃ³n 
`mutate()`. Esto realizarÃ¡ cambios en el marco de datos, pero no en el conjunto
de datos original que importaste. Los datos fuente no se modificarÃ¡n. 

```{r}
mutate(new_df, total = `adr` / adults)
```

# Paso 4: Importar tus propios datos

Â¡Ahora puedes encontrar tu propio .csv para importar! Usando la interfaz de 
RStudio Cloud, importa y guarda el archivo en la misma carpeta que este
documento de R Markdown. Para hacerlo, ve a la pestaÃ±a Archivos en la consola 
en la esquina inferior derecha. Luego, haz clic en el botÃ³n Cargar al lado del
botÃ³n + Nueva carpeta. Esto abrirÃ¡ una ventana emergente para dejarte explorar
tu computadora en busca de un archivo. Selecciona cualquier archivo .csv y
luego haz clic en Abrir. Ahora, escribe el cÃ³digo en el bloque que aparece 
debajo para leer esos datos en `R`:
  
  ```{r}
new_indicator <- read_csv("Documents/RStudio Scripts/indicator.csv")
```
Puedes consultar el documento de soluciones de esta actividad para cotejar tu trabajo.

## ConclusiÃ³n de la actividad
Ahora que sabes cÃ³mo importar datos usando la funciÃ³n `read_csv()`, podrÃ¡s trabajar con datos que se almacenaron de manera externa directamente en tu consola `R`. Puedes seguir practicando estas destrezas modificando los bloques de cÃ³digo en el archivo rmd o usar este cÃ³digo como punto de partida en la consola de tu propio proyecto. A medida que te familiarices mÃ¡s con el proceso de importar datos, analiza cÃ³mo el hecho de importar datos de un archivo .csv modificÃ³ la manera en que accediste e interactuaste con los datos. Â¿Hiciste algo diferente? Poder importar datos de fuentes externas te permitirÃ¡ trabajar con aÃºn mÃ¡s datos, dÃ¡ndote aÃºn mÃ¡s opciones para analizar datos en `R`.  

AsegÃºrate de marcar esta actividad como finalizada en Coursera.
















