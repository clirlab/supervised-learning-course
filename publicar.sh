#!/usr/bin/env bash
# Uso (la primera vez):  ./publicar.sh https://github.com/USUARIO/REPOSITORIO.git
# Después basta con:     ./publicar.sh
set -e
cd "$(dirname "$0")"
./sincronizar.sh
[ -d .git ] || git init -b main
if ! git remote get-url origin >/dev/null 2>&1; then
  [ -n "$1" ] || { echo "Falta la dirección del repositorio: ./publicar.sh https://github.com/USUARIO/REPOSITORIO.git"; exit 1; }
  git remote add origin "$1"
fi
git add -A
if git ls-files | grep -qi solucion; then echo "ALTO: hay un solucionario en el repositorio."; exit 1; fi
git commit -m "Actualiza materiales del curso" || echo "No hay cambios nuevos."
git push -u origin main
echo "Listo. Activa GitHub Pages la primera vez: Settings > Pages > Deploy from a branch > main / (root)."
