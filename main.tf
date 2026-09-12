resource "helm_release" "traefik_ingress" {
  name             = "traefik"
  repository       = "https://github.io"
  chart            = "traefik"
  version          = "41.5.0" # Keeps it on a stable chart version for Traefik v3
  namespace        = "kube-system"
  create_namespace = false

  # Passes the minimal drop-in configuration file
  values = [
    file("${path.module}/values.yaml")
  ]
}
