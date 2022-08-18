class Package {
  final String guiaPaquete;
  final String metodoEnvio;
  final String estadoGuia;
  final String facturaGuia;
  final String vendedorGuia;
  final String ordenPaquete;
  final String clientePaquete;

  const Package(
      {required this.guiaPaquete,
      required this.metodoEnvio,
      required this.estadoGuia,
      required this.facturaGuia,
      required this.vendedorGuia,
      required this.ordenPaquete,
      required this.clientePaquete});
}
