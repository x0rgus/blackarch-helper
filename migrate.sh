#!/bin/bash
# Script simples para copiar arquivos do diretório atual
# para ../blackarch-helper-aur

# Diretório destino
DEST="../blackarch-helper-aur"

# Lista dos arquivos a copiar
FILES=(
  "blackarch-helper"
  "blackarch-helper.1"
  "blackarch-helper.bash-completion"
  "_blackarch-helper"
  "PKGBUILD"
  ".SRCINFO"
)

# Verifica se diretório destino existe
if [ ! -d "$DEST" ]; then
  echo "Diretório de destino $DEST não existe. Criando..."
  mkdir -p "$DEST"
fi

# Copia os arquivos
for file in "${FILES[@]}"; do
  if [ -f "$file" ]; then
    cp -v "$file" "$DEST/"
  else
    echo "Aviso: arquivo $file não encontrado, pulando."
  fi
done

echo "Migração concluída!"
