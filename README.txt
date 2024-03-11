Hola, los scripts de obtención y limpieza de datos se elaboraron usando una BASH Shell, debes darles permisos de ejecución y ejecutarlos en el orden mostrado:

Primero descarga todos los html de la base de datos ejecutando ./01_consulta_tracklist.sh
Después ejecuta el siguiente bucle 
    for i in {01..40}; do ./02_extraer_tracklist.sh "$i.html"; done

Comprueba que se haya creado el archivo: "db.txt"

Finalmente ejecutar el cálculo estadístico usando python y el archivo 03_calculo_probabilidad.py, ahí puedes colocar los ajustes que consideres necesarios. 

Suerte!
