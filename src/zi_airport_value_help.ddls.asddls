@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value Help for the Search field.'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Search.searchable: true
define view entity ZI_AIRPORT_VALUE_HELP
  as select from /dmo/airport
{
      @Search.defaultSearchElement: true
  key airport_id as AirportId,
      @Search.defaultSearchElement: true
      name       as Name,
      @Search.defaultSearchElement: true
      city       as City,
      @Search.defaultSearchElement: true
      country    as Country
}
