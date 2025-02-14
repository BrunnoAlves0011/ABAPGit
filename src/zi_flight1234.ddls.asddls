@AbapCatalog.sqlViewName: 'ZI_FLIGHTV1234'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'RAP - Voos Teste'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view ZI_FLIGHT1234
  as select from /dmo/flight
  association [1..1] to I_Currency as _Currency on $projection.CurrencyCode = _Currency.Currency
{
  key /dmo/flight.carrier_id     as CarrierId,
  key /dmo/flight.connection_id  as ConnectionId,
  key /dmo/flight.flight_date    as FlightDate,
      /dmo/flight.price          as Price,
      /dmo/flight.currency_code  as CurrencyCode,
      /dmo/flight.plane_type_id  as PlaneTypeId,
      /dmo/flight.seats_max      as SeatsMax,
      /dmo/flight.seats_occupied as SeatsOccupied,
      _Currency.CurrencyISOCode  as IsoCode,
      _Currency

}
