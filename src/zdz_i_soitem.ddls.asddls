@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS: Sales Order Item'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity zdz_i_soitem 
    as select from zdz_dt_soitem
    
    association to parent ZDZ_R_SOHEADER as SOHeader
    on $projection.Soid =   SOHeader.Soid
    
    association to ZDZ_I_PRODUCT as _prod
        on $projection.Product  =   _prod.ProdId
        
    association to ZDZ_I_DEL_SCHE as _delsche
        on $projection.Soid =   _delsche.Soid
       and $projection.ItemId   =  _delsche.ItemId
       
{

    key soid as Soid,
    key item_id as ItemId,
    product as Product,
    @Semantics.amount.currencyCode: 'Currency'
    amount as Amount,
    currency as Currency,
    sales_person as SalesPerson,
    sales_timestamp as SalesTimestamp,
    sales_manager as SalesManager,
    approval_timestamp as ApprovalTimestamp,
    changed_by as ChangedBy,
    changed_on as ChangedOn,
    image_item as ImageItem,
    SOHeader,
    _prod,
    _delsche
        
}
