@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_COCHE_36
  as select from ZCOCHE_36
{
  key id_coche as IdCoche,
  key id_cliente as IdCliente,
  marca as Marca,
  modelo as Modelo,
  fecha_matriculacion as FechaMatriculacion,
  bastidor as Bastidor,
  @Semantics.user.createdBy: true
  user_create as UserCreate,
  @Semantics.user.lastChangedBy: true
  user_last_change as UserLastChange,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  abp_locinst_lastchange_tstmpl as AbpLocinstLastchangeTstmpl,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  abp_locinst_lastchange_utcl as AbpLocinstLastchangeUtcl,
  @Semantics.systemDateTime.lastChangedAt: true
  abp_lastchange_tstmpl as AbpLastchangeTstmpl,
  @Semantics.systemDateTime.lastChangedAt: true
  abp_lastchange_utcl as AbpLastchangeUtcl
  
}
