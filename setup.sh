
#!/bin/bash

set -e

echo "🚀 A criar estrutura do Njila Go..."

# Diretórios principais
directories=(
    "docs"

    # Aplicações
    "apps/client_app"
    "apps/driver_app"
    "apps/central_web"

    # Serviços
    "services/api"
    "services/dispatch"
    "services/safety"
    "services/mapping"
    "services/comms"
    "services/reports"

    # Base de dados
    "db/migrations"
    "db/seed"
    "db/policies"

    # Infraestrutura, testes e MCP
    "infra"
    "tests"
    "mcp"
)

# Criar diretórios
for directory in "${directories[@]}"; do
    mkdir -p "$directory"
    echo "✔ Criado: $directory"
done

# Criar README caso ainda não exista
if [ ! -f README.md ]; then
    touch README.md
    echo "✔ Criado: README.md"
else
    echo "ℹ README.md já existe."
fi

echo ""
echo "✅ Estrutura do Njila Go criada com sucesso!"
