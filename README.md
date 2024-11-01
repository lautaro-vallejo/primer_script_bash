# Titulo

## Descripción

Este script Bash permite ejecutar tareas de administración para sistemas Linux a través de un menú interactivo que simplifica el acceso y uso de las siguientes funciones:

1. **Generar informe de uso del sistema**: Muestra información detallada sobre el uso de CPU, memoria y disco, guardando un registro en `informe_sistema.log`.
2. **Actualizar el sistema**: Realiza una actualización automática de los paquetes del sistema mediante `apt`.
3. **Limpiar archivos temporales**: Elimina archivos temporales y la caché para liberar espacio en el disco.

## Instrucciones de Uso

1. Clona el repositorio en tu máquina local:
    ```bash
    git clone https://github.com/tu_usuario/tu_repositorio.git
    ```

2. Navega al directorio del proyecto:
    ```bash
    cd tu_repositorio
    ```

3. Da permisos de ejecución al script:
    ```bash
    chmod +x script.sh
    ```

4. Ejecuta el script:
    ```bash
    ./script.sh
    ```

### Ejemplos

Al ejecutar el script, aparecerá un menú con las siguientes opciones:

- **1**: Generar un informe de uso del sistema. Esto crea un archivo llamado `informe_sistema.log` con los detalles de uso de CPU, memoria y disco.
- **2**: Actualizar el sistema. Se ejecutarán `apt update` y `apt upgrade` para instalar las últimas actualizaciones de los paquetes.
- **3**: Limpiar archivos temporales. Se eliminarán archivos de caché para liberar espacio.
- **4**: Salir del menú interactivo.

Selecciona una opción ingresando el número correspondiente y presionando "Enter".

## Cómo Colaborar

Para colaborar en el proyecto desde una terminal en Linux:

1. Haz un fork del repositorio original en GitHub.
2. Clona tu fork en tu máquina local:
    ```bash
    git clone https://github.com/tu_usuario/tu_fork.git
    ```

3. Crea una nueva rama para tu funcionalidad:
    ```bash
    git checkout -b nueva-funcionalidad
    ```

4. Realiza tus cambios y haz commit de ellos:
    ```bash
    git add .
    git commit -m "Agrego nueva funcionalidad"
    ```

5. Sube los cambios a tu fork en GitHub:
    ```bash
    git push origin nueva-funcionalidad
    ```

6. En GitHub, solicita un Pull Request desde tu rama hacia el repositorio original.

## Licencia

Este proyecto se distribuye bajo la Licencia MIT. Consulta el archivo `LICENSE` para más detalles.
