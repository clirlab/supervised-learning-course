#!/usr/bin/env bash
# Copia a este sitio los materiales más recientes de la carpeta de trabajo (..).
# Solo se copian presentaciones y notebooks de ALUMNOS; los solucionarios nunca salen de aquí.
set -e
cd "$(dirname "$0")"
mkdir -p introduccion
cp -f ../v3/intro_aprendizaje_supervisado.pdf introduccion/presentacion_introduccion.pdf
cp -f ../v3/unidad1_eda.pdf unidad1/presentacion_unidad1_eda.pdf
cp -f ../v3/notebooks/actividad_unidad1_eda_california_housing.ipynb unidad1/actividad_eda_california_housing.ipynb
mkdir -p unidad2
cp -f ../v3/unidad2_preprocesamiento.pdf unidad2/presentacion_unidad2_preprocesamiento.pdf
cp -f ../v3/notebooks/actividad_unidad2_preprocesamiento.ipynb unidad2/actividad_preprocesamiento.ipynb
mkdir -p unidad3
cp -f ../v3/unidad3_ingenieria_seleccion.pdf unidad3/presentacion_unidad3_seleccion_variables.pdf
cp -f ../v3/notebooks/actividad_unidad3_seleccion_variables.ipynb unidad3/actividad_seleccion_variables.ipynb
mkdir -p curso
cp -f ../Planeacion_Didactica_Aprendizaje_Supervisado.pdf curso/planeacion_didactica.pdf
echo "Materiales sincronizados."
