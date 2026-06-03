@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root CDS: SO Header'
@Metadata.ignorePropagatedAnnotations: true

define root view entity ZDZ_R_SOHEADER as select from zdz_dt_so
    composition [1..*] of zdz_i_soitem as _soitem
{
    
    key zdz_dt_so.soid as Soid,
    zdz_dt_so.buyer as Buyer,
    zdz_dt_so.sales_person as SalesPerson,
    zdz_dt_so.sales_timestamp as SalesTimestamp,
    zdz_dt_so.sales_manager as SalesManager,
    zdz_dt_so.approval_timestamp as ApprovalTimestamp,
    zdz_dt_so.created_by as CreatedBy,
    zdz_dt_so.created_on as CreatedOn,
    zdz_dt_so.changed_by as ChangedBy,
    zdz_dt_so.changed_on as ChangedOn,
    zdz_dt_so.url as Url,
    _soitem // Make association public
}
