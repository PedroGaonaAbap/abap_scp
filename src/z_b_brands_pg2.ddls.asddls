@AbapCatalog.sqlViewName: 'ZV_BRANDS_PG2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Marca Vehiculo'
define view z_b_brands_pg2
  as select from zrent_brands_pg2
{

  key marca as Marca,
      @UI.hidden: true
      url   as Imagen

}
