@AbapCatalog.sqlViewName: 'ZV_RENTING_PG2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Renting Vista Intermedia'
@Metadata.allowExtensions: true
define view z_i_renting_pg2 
    as select from z_b_cars_pg2 as Cars
    association [1] to z_b_rem_days_pg2 as RemDays on Cars.Matricula = RemDays.Matricula
    association [0..*] to z_b_brands_pg2 as Brands on Cars.Marca = Brands.Marca
    association [0..*] to z_b_det_customer_pg2 as DetCostumer on Cars.Matricula = DetCostumer.Matricula
{
   key Matricula,
   Marca,
   Modelo,
   Color,
   Motor,
   Potencia,
   Unidad,
   Combustible,
   Consumo,
   FechaFabricacion,
   Puertas,
   Precio,
   Moneda,
   Alquilado,
   Desde,
   Hasta,
       
//    0 neutral grey
//    1 negative red
//    2 critical yellow
//    3 positive green
   case 
    when RemDays.Dias <= 0 then 0
    when RemDays.Dias between 1 and 30 then 1 
    when RemDays.Dias between 31 and 100 then 2
    when RemDays.Dias > 100 then 3
    else 0
    end as TiempoRenta,
    '' as Estado,

    
    Brands.Imagen,
    DetCostumer
    
}
