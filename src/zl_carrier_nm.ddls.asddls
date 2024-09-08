@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Carrier Names'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZL_CARRIER_NM as select from /dmo/carrier
{
  
    key carrier_id as CarrierId,
    @Semantics.text: true   // Display Carrier names
    name as Name,
    currency_code as CurrencyCode
}
