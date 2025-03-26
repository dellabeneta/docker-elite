Como usar!

# Ambiente de desenvolvimento
docker compose -p ecommerce-dev --env-file envs/.dev.env up -d

# Ambiente de homologação
docker compose -p ecommerce-hml --env-file envs/.hml.env up -d

# Ambiente de produção
docker compose -p ecommerce-prd --env-file envs/.prd.env up -d


---

O parâmetro -p define um namespace único

Cada ambiente terá:

Containers com prefixo único (ex: ecommerce-dev-postgre-1)

Rede dedicada (ecommerce-dev-net)

Volume isolado (postgre_data_dev)

Portas exclusivas
