resource "helm_release" "prometheus" {
  name       = var.name
  namespace  = try(var.namespace)
  repository = var.repository
  chart      = var.chart
  version    = var.chart_version

  cleanup_on_fail   = var.cleanup_on_fail
  create_namespace  = var.create_namespace
}
