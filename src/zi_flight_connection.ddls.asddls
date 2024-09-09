@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Related Destination Flights'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_FLIGHT_CONNECTION as select from /dmo/flight as Flights
association [1] to ZL_CARRIER_NM as _AirlineNm on $projection.CarrierId = _AirlineNm.CarrierId
{
    @ObjectModel.text.association: '_AirlineNm'
    key carrier_id as CarrierId,
    key connection_id as ConnectionId,
    key flight_date as FlightDate,
   @Semantics.amount.currencyCode: 'CurrencyCode'
    price as Price,
    currency_code as CurrencyCode,
    plane_type_id as PlaneTypeId,
    seats_max as SeatsMax,
    seats_occupied as SeatsOccupied,
    @Search.defaultSearchElement: true
    _AirlineNm
}
