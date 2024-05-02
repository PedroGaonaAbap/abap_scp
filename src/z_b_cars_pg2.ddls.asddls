@AbapCatalog.sqlViewName: 'ZV_CARS_PG2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Carros'
define view z_b_cars_pg2 as select from zrent_cars_pg2
{
    key matricula as Matricula,
    marca as Marca,
    modelo as Modelo,
    color as Color,
    motor as Motor,
    potencia as Potencia,
    und_potencia as Unidad,
    combustible as Combustible,
    consumo as Consumo,
    fecha_fabr as FechaFabricacion,
    puertas as Puertas,
    precio as Precio,
    moneda as Moneda,
    alquilado as Alquilado,
    alq_desde as Desde,
    alq_hasta as Hasta
}
