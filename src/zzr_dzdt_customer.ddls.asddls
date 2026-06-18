@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZZDZDT_CUSTOMER'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZZR_DZDT_CUSTOMER
  as select from ZDZ_DT_CUSTOMER
{
  key cust_id as CustID,
  name as Name,
  company_name as CompanyName,
  country as Country,
  city as City,
  mobile as Mobile,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed as LocalLastChanged,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed as LastChanged,
  @Semantics.user.createdBy: true
  local_changed_by as LocalChangedBy,
  @Semantics.user.lastChangedBy: true
  last_changed_by as LastChangedBy
}
