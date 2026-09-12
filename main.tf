resource "helm_release" "traefik_ingress" {
  name             = "traefik"
  # CHANGE THIS: Update to the correct GitHub Pages chart endpoint
  chart            = "oci://ghcr.io/traefik/helm/traefik" # Points directly to OCI registry"
  version          = "41.5.0" # Keeps it on a stable chart version for Traefik v3
  namespace        = "traefik"
  create_namespace = true


  # Passes the minimal drop-in configuration file
  values = [
    file("${path.module}/values.yaml")
  ]
}
