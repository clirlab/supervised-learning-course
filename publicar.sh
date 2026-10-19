#!/usr/bin/env bash
# Uso (la primera vez):  ./publicar.sh https://github.com/USUARIO/REPOSITORIO.git
# Después basta con:     ./publicar.sh
set -e
cd "$(dirname "$0")"
./sincronizar.sh
[ -d .git ] || git init -b main
if [ -n "$1" ]; then
  # con una dirección como argumento, se crea o se corrige el remoto «origin»
  if git remote get-url origin >/dev/null 2>&1; then git remote set-url origin "$1"; else git remote add origin "$1"; fi
elif ! git remote get-url origin >/dev/null 2>&1; then
  echo "Falta la dirección del repositorio: ./publicar.sh https://github.com/USUARIO/REPOSITORIO.git"; exit 1
fi
echo "Remoto: $(git remote get-url origin)"
git add -A
if git ls-files | grep -qi solucion; then echo "ALTO: hay un solucionario en el repositorio."; exit 1; fi
git commit -m "Actualiza materiales del curso" || echo "No hay cambios nuevos."
git push -u origin main
echo "Listo. Activa GitHub Pages la primera vez: Settings > Pages > Deploy from a branch > main / (root)."
