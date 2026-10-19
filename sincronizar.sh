#!/usr/bin/env bash
# Copia a este sitio los materiales más recientes de la carpeta de trabajo (..).
# Solo se copian presentaciones y notebooks de ALUMNOS; los solucionarios nunca salen de aquí.
set -e
cd "$(dirname "$0")"
cp -f ../v3/unidad1_eda.pdf unidad1/presentacion_unidad1_eda.pdf
cp -f ../v3/notebooks/actividad_unidad1_eda_california_housing.ipynb unidad1/actividad_eda_california_housing.ipynb
echo "Materiales sincronizados."
