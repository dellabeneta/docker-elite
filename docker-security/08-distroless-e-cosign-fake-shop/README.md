https://hub.docker.com/repository/docker/dellabeneta/fake-shop-distroless

### Verificando a assinatura da imagem com Cosign

Para verificar a assinatura da imagem Docker `dellabeneta/fake-shop-distroless:v1` usando o Cosign, siga os passos abaixo:

cosign verify --key cosign.pub  dellabeneta/fake-shop-distroless:v1