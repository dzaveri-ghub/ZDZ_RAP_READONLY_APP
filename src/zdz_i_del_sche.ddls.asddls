@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS: Delivery Schedule'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZDZ_I_DEL_SCHE 
    as select from zdz_dt_del_sche
{
    
    key soid as Soid,
    key item_id as ItemId,
    key delv_id as DelvId,
    product as Product,
    quantity as Quantity,
    delivery_date as DeliveryDate
}
