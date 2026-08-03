#!/bin/bash

# build.sh — injeta as variáveis de ambiente no index.html durante o deploy

echo "Iniciando build..."

# Substitui o placeholder da URL
sed -i "s|https://XXXXXXXXXXXX.supabase.co|${SUPABASE_URL}|g" index.html

# Substitui o placeholder da chave
sed -i "s|eyJ...SUA_PUBLISHABLE_KEY_AQUI...|${SUPABASE_ANON_KEY}|g" index.html

echo "Build concluído — variáveis injetadas com sucesso."
