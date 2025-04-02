### **Como Usar**:

#### **Ambiente de Desenvolvimento**:
- O VS Code usará automaticamente os arquivos dentro de `.devcontainer`.
- Comandos do VS Code: `Reopen in Container` (já aplica o override).

#### **Ambiente de Produção**:
```
# Na raiz do projeto:
docker compose -f compose.yml build
docker compose -f compose.yml up -d
```