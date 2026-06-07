@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS: Product'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZDZ_I_PRODUCT 
    as select from zdz_dt_prod
{

key prod_id as ProdId,
descpt as Descpt,
@Semantics.amount.currencyCode: 'Currency'
price as Price,
currency as Currency
    
}
