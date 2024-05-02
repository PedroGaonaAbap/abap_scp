@AbapCatalog.sqlViewName: 'ZV_REM_DAYS_PG2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Dias de diferencia'
define view z_b_rem_days_pg2
  as select from zrent_cars_pg2
{

  key matricula as Matricula,
      marca     as Marca,
      case
      when alq_hasta <> ''
      then dats_days_between( cast( $session.system_date as abap.dats ), alq_hasta )
      end       as Dias

}
