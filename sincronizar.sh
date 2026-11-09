#!/usr/bin/env bash
# Copia a este sitio los materiales más recientes de la carpeta de trabajo (..).
# Se publican: presentaciones, notebooks de alumnos, soluciones de las actividades de las Unidades 1-3 y el examen SIN solución.
# La solución del examen y cualquier otro solucionario nunca salen de aquí.
set -e
cd "$(dirname "$0")"
mkdir -p introduccion
cp -f ../v3/intro_aprendizaje_supervisado.pdf introduccion/presentacion_introduccion.pdf
cp -f ../v3/unidad1_eda.pdf unidad1/presentacion_unidad1_eda.pdf
cp -f ../v3/notebooks/actividad_unidad1_eda_california_housing.ipynb unidad1/actividad_eda_california_housing.ipynb
cp -f ../v3/notebooks/actividad_unidad1_eda_california_housing_solucion.ipynb unidad1/solucion_actividad_eda_california_housing.ipynb
mkdir -p unidad2
cp -f ../v3/unidad2_preprocesamiento.pdf unidad2/presentacion_unidad2_preprocesamiento.pdf
cp -f ../v3/notebooks/actividad_unidad2_preprocesamiento.ipynb unidad2/actividad_preprocesamiento.ipynb
cp -f ../v3/notebooks/actividad_unidad2_preprocesamiento_solucion.ipynb unidad2/solucion_actividad_preprocesamiento.ipynb
mkdir -p unidad3
cp -f ../v3/unidad3_ingenieria_seleccion.pdf unidad3/presentacion_unidad3_seleccion_variables.pdf
cp -f ../v3/notebooks/actividad_unidad3_seleccion_variables.ipynb unidad3/actividad_seleccion_variables.ipynb
cp -f ../v3/notebooks/actividad_unidad3_seleccion_variables_solucion.ipynb unidad3/solucion_actividad_seleccion_variables.ipynb
mkdir -p modulo1
cp -f ../v3/repaso_unidades_1_3.pdf modulo1/repaso_unidades_1_3.pdf
cp -f ../v3/notebooks/examen_modulo1_preparacion_datos.ipynb modulo1/examen_modulo1_preparacion_datos.ipynb
mkdir -p unidad4
cp -f ../v3/unidad4_regresion_lineal_polinomial.pdf unidad4/presentacion_unidad4_regresion_lineal_polinomial.pdf
cp -f ../v3/notebooks/actividad_unidad4_regresion_lineal_polinomial.ipynb unidad4/actividad_regresion_lineal_polinomial.ipynb
mkdir -p unidad5
cp -f ../v3/unidad5_regresion_regularizada.pdf unidad5/presentacion_unidad5_regresion_regularizada.pdf
cp -f ../v3/notebooks/actividad_unidad5_regresion_regularizada.ipynb unidad5/actividad_regresion_regularizada.ipynb
mkdir -p unidad6
cp -f ../v3/unidad6_svr.pdf unidad6/presentacion_unidad6_svr.pdf
cp -f ../v3/notebooks/actividad_unidad6_svr.ipynb unidad6/actividad_svr.ipynb
cp -f ../datos_sinteticos/consumo_energetico.csv unidad6/consumo_energetico.csv
mkdir -p unidad7
cp -f ../v3/unidad7_arboles_evaluacion.pdf unidad7/presentacion_unidad7_arboles_evaluacion.pdf
cp -f ../v3/notebooks/actividad_unidad7_arboles_evaluacion.ipynb unidad7/actividad_arboles_evaluacion.ipynb
mkdir -p curso
cp -f ../Planeacion_Didactica_Aprendizaje_Supervisado.pdf curso/planeacion_didactica.pdf
mkdir -p modulo2
cp -f "../Examen Modulo 2 /Practica_Regresion_ML_Estabilidad_Redes.pdf" modulo2/practica_regresion_ml_estabilidad_redes.pdf
cp -f "../Examen Modulo 2 /electrical_grid_stability_train.csv" modulo2/electrical_grid_stability_train.csv
mkdir -p unidad8
cp -f ../v3/unidad8_regresion_logistica_knn.pdf unidad8/presentacion_unidad8_regresion_logistica_knn.pdf
cp -f ../v3/notebooks/actividad_unidad8_spam_logistica_knn.ipynb unidad8/actividad_spam_logistica_knn.ipynb
mkdir -p unidad9
cp -f ../v3/unidad9_bayes_arboles_clasificacion.pdf unidad9/presentacion_unidad9_bayes_arboles_clasificacion.pdf
cp -f ../v3/notebooks/actividad_unidad9_naive_bayes_texto.ipynb unidad9/actividad_naive_bayes_texto.ipynb
cp -f ../v3/notebooks/actividad_unidad9_arboles_diabetes.ipynb unidad9/actividad_arboles_diabetes.ipynb
mkdir -p unidad10
cp -f ../v3/unidad10_svm_clasificacion.pdf unidad10/presentacion_unidad10_svm_clasificacion.pdf
cp -f ../v3/notebooks/actividad_unidad10_svm_digitos.ipynb unidad10/actividad_svm_digitos.ipynb
mkdir -p unidad11
cp -f ../v3/unidad11_ensambles.pdf unidad11/presentacion_unidad11_ensambles.pdf
cp -f ../v3/notebooks/actividad_unidad11_ensambles.ipynb unidad11/actividad_ensambles.ipynb
mkdir -p unidad12
cp -f ../v3/unidad12_evaluacion_hiperparametros.pdf unidad12/presentacion_unidad12_evaluacion_hiperparametros.pdf
cp -f ../v3/notebooks/actividad_unidad12_evaluacion_hiperparametros.ipynb unidad12/actividad_evaluacion_hiperparametros.ipynb
mkdir -p unidad13
cp -f ../v3/unidad13_redes_neuronales.pdf unidad13/presentacion_unidad13_redes_neuronales.pdf
# TODO: falta el notebook de la actividad de la Unidad 13 (MLP / Fashion-MNIST); descomentar cuando exista:
# cp -f ../v3/notebooks/actividad_unidad13_redes_neuronales.ipynb unidad13/actividad_redes_neuronales.ipynb
echo "Materiales sincronizados."
