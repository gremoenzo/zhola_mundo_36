@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista entre coche y cliente'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity ZCDS_DD_VIEW_COCHE_CLIENTE_36
  as select from zcliente_36 as clien
    inner join   zcoche_36   as coche on coche.id_cliente = clien.id_cliente
{
  key clien.id_cliente as IdCliente,
  key coche.id_coche   as IdCoche,
      clien.nombre     as NombreCliente,
      clien.apellido   as ApellidoCliente,
      coche.marca      as Marca,
      coche.modelo     as Modelo,
      coche.bastidor   as Bastidor
}
