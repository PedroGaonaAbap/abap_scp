@AbapCatalog.sqlViewName: 'ZV_DET_CUST_PG2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Detalles Clientes'
@Metadata.allowExtensions: true
define view z_b_det_customer_pg2 as select from zrent_cli_pg2

{
    key doc_id as ID,
    key matricula as Matricula,
    nombres as Nombre,
    apellidos as Apellidos,
    email as Email,
    cntr_type as TipoContrato
}
