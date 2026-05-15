#!/bin/bash
# 1. Validar que se pasó el parámetro obligatorio ($1)
if [ -z "$1" ]; then
    echo "Error: Debés indicar el nombre del archivo."
    echo "Uso: $0 nombre_del_script.sh"
    exit 1
fi

# 2. Guardar el parámetro en una variable
NOMBRE_ARCHIVO="$1"
# 3. Crear el archivo e introducir la cabecera
echo "#!/bin/bash" > "$NOMBRE_ARCHIVO"
# 4. Asignar permisos rwx
chmod u+rwx "$NOMBRE_ARCHIVO"
echo "Archivo '$NOMBRE_ARCHIVO' creado con éxito y listo para ejecutar."
