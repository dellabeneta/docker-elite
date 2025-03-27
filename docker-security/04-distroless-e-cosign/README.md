### Imagem Docker kube-news-distroless

**URL da Imagem:**  
https://hub.docker.com/repository/docker/dellabeneta/kube-news-distroless/tags

### Verificação de Integridade

1. **Baixar chave pública e assinatura:**
   - [`cosign.pub`](cosign.pub)
   - [`cosign-signature.txt`](cosign-signature.txt)

2. **Verificar assinatura:**
```
cosign verify --key cosign.pub dellabeneta/kube-news-distroless@sha256:6914ccc5986efa51ac28cf58e04fda2af9fb8cf5d20f8d6815fa63b895da6d44
```


3. **Saída da validação de estudo:**
```
della@ubuntu:~/projetos/docker-elite/docker-security/04-distroless-e-cosign$ cosign verify --key cosign.pub dellabeneta/kube-news-distroless@sha256:6914ccc5986efa51ac28cf58e04fda2af9fb8cf5d20f8d6815fa63b895da6d44

Verification for index.docker.io/dellabeneta/kube-news-distroless@sha256:6914ccc5986efa51ac28cf58e04fda2af9fb8cf5d20f8d6815fa63b895da6d44 --
The following checks were performed on each of these signatures:
  - The cosign claims were validated
  - Existence of the claims in the transparency log was verified offline
  - The signatures were verified against the specified public key

[{"critical":{"identity":{"docker-reference":"index.docker.io/dellabeneta/kube-news-distroless"},"image":{"docker-manifest-digest":"sha256:6914ccc5986efa51ac28cf58e04fda2af9fb8cf5d20f8d6815fa63b895da6d44"},"type":"cosign container image signature"},"optional":{"Bundle":{"SignedEntryTimestamp":"MEUCIQCdrTBN2z8gzFjmNwggcBIj3Znnm9Luwy0FpJaCBnhHGAIgL5LMmBu56btKOJ864NpMLRKmTGZEnFFGxtucfXxnMYM=","Payload":{"body":"eyJhcGlWZXJzaW9uIjoiMC4wLjEiLCJraW5kIjoiaGFzaGVkcmVrb3JkIiwic3BlYyI6eyJkYXRhIjp7Imhhc2giOnsiYWxnb3JpdGhtIjoic2hhMjU2IiwidmFsdWUiOiI0YjE2NWQwMmY1ZDUwNjE4ZWZlM2FjYWZiMDBlOWZkMjc5YTBhZWRiYTQzYWEzYzBmNzRjMDc3YzM3NmUxY2ZkIn19LCJzaWduYXR1cmUiOnsiY29udGVudCI6Ik1FUUNJSHRvL2hWaVlWa2c4V29YRWdiQzNxdEdKQThIZ3hpd0ltZ3R0WUREWWtLYUFpQVI1MHRVMlNwSVBjdVVmSUxianQwSWlhcVlwa0FqSjgrbUM1Q09iS3lDTWc9PSIsInB1YmxpY0tleSI6eyJjb250ZW50IjoiTFMwdExTMUNSVWRKVGlCUVZVSk1TVU1nUzBWWkxTMHRMUzBLVFVacmQwVjNXVWhMYjFwSmVtb3dRMEZSV1VsTGIxcEplbW93UkVGUlkwUlJaMEZGU0hZeVdIVlZkVzVDTjFkVldWVjBaMDEzT1RNMWNsRnBUVzl1Vndvd09HWnFRV2xKYzNWcEswTXhZV2N4UmxwMUwybDNORkZZTlc1clJUQlVhbUpLVjFCc2RHeFlLM1p6VXpkNU1FeDRXVVJqU1ROWmFDOVJQVDBLTFMwdExTMUZUa1FnVUZWQ1RFbERJRXRGV1MwdExTMHRDZz09In19fX0=","integratedTime":1743113110,"logIndex":189132280,"logID":"c0d23d6ad406973f9559f3ba2d1ca01f84147d8ffc5b8445c224f98b9591801d"}}}}]
```