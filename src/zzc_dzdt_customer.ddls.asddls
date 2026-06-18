@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZZDZDT_CUSTOMER'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZZC_DZDT_CUSTOMER
  provider contract TRANSACTIONAL_QUERY
  as projection on ZZR_DZDT_CUSTOMER
  association [1..1] to ZZR_DZDT_CUSTOMER as _BaseEntity on $projection.CUSTID = _BaseEntity.CUSTID
{
  key CustID,
  Name,
  CompanyName,
  Country,
  City,
  Mobile,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChanged,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChanged,
  @Semantics: {
    User.Createdby: true
  }
  LocalChangedBy,
  @Semantics: {
    User.Lastchangedby: true
  }
  LastChangedBy,
  _BaseEntity
}
