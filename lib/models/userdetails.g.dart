// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userdetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDetails _$UserDetailsFromJson(Map<String, dynamic> json) {
  return UserDetails(
    result: json['Result'] == null
        ? null
        : Result.fromJson(json['Result'] as Map<String, dynamic>),
    isSuccess: json['IsSuccess'] as bool,
    errors: json['Errors'] as List,
    alerts: json['Alerts'] as List,
  );
}

Map<String, dynamic> _$UserDetailsToJson(UserDetails instance) =>
    <String, dynamic>{
      'Result': instance.result?.toJson(),
      'IsSuccess': instance.isSuccess,
      'Errors': instance.errors,
      'Alerts': instance.alerts,
    };

Result _$ResultFromJson(Map<String, dynamic> json) {
  return Result(
    user: json['User'] == null
        ? null
        : User.fromJson(json['User'] as Map<String, dynamic>),
    approverDetails: (json['ApproverDetails'] as List)
        ?.map((e) => e == null
            ? null
            : ApproverDetails.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    billingEntities: (json['BillingEntities'] as List)
        ?.map((e) => e == null
            ? null
            : BillingEntities.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    costCenters: (json['CostCenters'] as List)
        ?.map((e) =>
            e == null ? null : CostCenters.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    userDocuments: (json['UserDocuments'] as List)
        ?.map((e) => e == null
            ? null
            : UserDocuments.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    approvalFlowRule: json['ApprovalFlowRule'] as String,
    travelPolicy: json['TravelPolicy'] == null
        ? null
        : TravelPolicy.fromJson(json['TravelPolicy'] as Map<String, dynamic>),
    formOfPayment: json['FormOfPayment'] as String,
    corporate: json['Corporate'] == null
        ? null
        : Corporate.fromJson(json['Corporate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'User': instance.user?.toJson(),
      'ApproverDetails':
          instance.approverDetails?.map((e) => e?.toJson())?.toList(),
      'BillingEntities':
          instance.billingEntities?.map((e) => e?.toJson())?.toList(),
      'CostCenters': instance.costCenters?.map((e) => e?.toJson())?.toList(),
      'UserDocuments':
          instance.userDocuments?.map((e) => e?.toJson())?.toList(),
      'ApprovalFlowRule': instance.approvalFlowRule,
      'TravelPolicy': instance.travelPolicy?.toJson(),
      'FormOfPayment': instance.formOfPayment,
      'Corporate': instance.corporate?.toJson(),
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    userId: json['UserId'] as int,
    title: json['Title'] as String,
    firstName: json['FirstName'] as String,
    middleName: json['MiddleName'] as String,
    lastName: json['LastName'] as String,
    email: json['Email'] as String,
    employeeCode: json['EmployeeCode'] as String,
    addressId: json['AddressId'] as int,
    managers: (json['Managers'] as List)?.map((e) => e as int)?.toList(),
    userActionDetails: json['UserActionDetails'] == null
        ? null
        : UserActionDetails.fromJson(
            json['UserActionDetails'] as Map<String, dynamic>),
    permissions: json['Permissions'] == null
        ? null
        : Permissions.fromJson(json['Permissions'] as Map<String, dynamic>),
    userType: json['UserType'] as String,
    personType: json['PersonType'] as String,
    userRole: json['UserRole'] as String,
    birthDate: json['BirthDate'] as String,
    agentCurrency: json['AgentCurrency'] as String,
    corporateCurrency: json['CorporateCurrency'] as String,
    timeZoneId: json['TimeZoneId'] as String,
    timeZone: json['TimeZone'] == null
        ? null
        : TimeZone.fromJson(json['TimeZone'] as Map<String, dynamic>),
    bandId: json['BandId'] as int,
    bandType: json['BandType'] as String,
    roleId: json['RoleId'] as int,
    agencyId: json['AgencyId'] as int,
    corporateId: json['CorporateId'] as int,
    billingEntityId: json['BillingEntityId'] as int,
    entityName: json['EntityName'] as String,
    costCenterId: json['CostCenterId'] as int,
    isActive: json['IsActive'] as bool,
    remarks: json['Remarks'] as String,
    createdOn: json['CreatedOn'] as String,
    createdBy: json['CreatedBy'] as int,
    lastModifiedOn: json['LastModifiedOn'] as String,
    lastModifiedBy: json['LastModifiedBy'] as int,
    userStatus: json['UserStatus'] as String,
    dialCode: json['DialCode'] as String,
    mobileNumber: json['MobileNumber'] as String,
    contactNo: json['ContactNo'] as String,
    frequentFlyerDetailsData: json['FrequentFlyerDetailsData'] as List,
    approvalFlowRule: json['ApprovalFlowRule'] as String,
    isCustomizedTasks: json['IsCustomizedTasks'] as bool,
    isSingleSignOn: json['IsSingleSignOn'] as bool,
    isSuccess: json['IsSuccess'] as bool,
    errors: json['Errors'] as List,
    alerts: json['Alerts'] as List,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'UserId': instance.userId,
      'Title': instance.title,
      'FirstName': instance.firstName,
      'MiddleName': instance.middleName,
      'LastName': instance.lastName,
      'Email': instance.email,
      'EmployeeCode': instance.employeeCode,
      'AddressId': instance.addressId,
      'Managers': instance.managers,
      'UserActionDetails': instance.userActionDetails?.toJson(),
      'Permissions': instance.permissions?.toJson(),
      'UserType': instance.userType,
      'PersonType': instance.personType,
      'UserRole': instance.userRole,
      'BirthDate': instance.birthDate,
      'AgentCurrency': instance.agentCurrency,
      'CorporateCurrency': instance.corporateCurrency,
      'TimeZoneId': instance.timeZoneId,
      'TimeZone': instance.timeZone?.toJson(),
      'BandId': instance.bandId,
      'BandType': instance.bandType,
      'RoleId': instance.roleId,
      'AgencyId': instance.agencyId,
      'CorporateId': instance.corporateId,
      'BillingEntityId': instance.billingEntityId,
      'EntityName': instance.entityName,
      'CostCenterId': instance.costCenterId,
      'IsActive': instance.isActive,
      'Remarks': instance.remarks,
      'CreatedOn': instance.createdOn,
      'CreatedBy': instance.createdBy,
      'LastModifiedOn': instance.lastModifiedOn,
      'LastModifiedBy': instance.lastModifiedBy,
      'UserStatus': instance.userStatus,
      'DialCode': instance.dialCode,
      'MobileNumber': instance.mobileNumber,
      'ContactNo': instance.contactNo,
      'FrequentFlyerDetailsData': instance.frequentFlyerDetailsData,
      'ApprovalFlowRule': instance.approvalFlowRule,
      'IsCustomizedTasks': instance.isCustomizedTasks,
      'IsSingleSignOn': instance.isSingleSignOn,
      'IsSuccess': instance.isSuccess,
      'Errors': instance.errors,
      'Alerts': instance.alerts,
    };

UserActionDetails _$UserActionDetailsFromJson(Map<String, dynamic> json) {
  return UserActionDetails(
    isEmailVerified: json['IsEmailVerified'] as bool,
    isFirstPasswordChanged: json['IsFirstPasswordChanged'] as bool,
    isTourVisited: json['IsTourVisited'] as bool,
    isInvitationSent: json['IsInvitationSent'] as bool,
    passwordExpiryDate: json['PasswordExpiryDate'] as String,
  );
}

Map<String, dynamic> _$UserActionDetailsToJson(UserActionDetails instance) =>
    <String, dynamic>{
      'IsEmailVerified': instance.isEmailVerified,
      'IsFirstPasswordChanged': instance.isFirstPasswordChanged,
      'IsTourVisited': instance.isTourVisited,
      'IsInvitationSent': instance.isInvitationSent,
      'PasswordExpiryDate': instance.passwordExpiryDate,
    };

Permissions _$PermissionsFromJson(Map<String, dynamic> json) {
  return Permissions(
    canChangeBillingEntityDuringBooking:
        json['CanChangeBillingEntityDuringBooking'] as bool,
    canChangeCostCenterDuringBooking:
        json['CanChangeCostCenterDuringBooking'] as bool,
    canBookForOthers: json['CanBookForOthers'] as bool,
  );
}

Map<String, dynamic> _$PermissionsToJson(Permissions instance) =>
    <String, dynamic>{
      'CanChangeBillingEntityDuringBooking':
          instance.canChangeBillingEntityDuringBooking,
      'CanChangeCostCenterDuringBooking':
          instance.canChangeCostCenterDuringBooking,
      'CanBookForOthers': instance.canBookForOthers,
    };

TimeZone _$TimeZoneFromJson(Map<String, dynamic> json) {
  return TimeZone(
    id: json['Id'] as String,
    displayName: json['DisplayName'] as String,
    standardName: json['StandardName'] as String,
    daylightName: json['DaylightName'] as String,
    baseUtcOffset: json['BaseUtcOffset'] as String,
    adjustmentRules: json['AdjustmentRules'],
    supportsDaylightSavingTime: json['SupportsDaylightSavingTime'] as bool,
  );
}

Map<String, dynamic> _$TimeZoneToJson(TimeZone instance) => <String, dynamic>{
      'Id': instance.id,
      'DisplayName': instance.displayName,
      'StandardName': instance.standardName,
      'DaylightName': instance.daylightName,
      'BaseUtcOffset': instance.baseUtcOffset,
      'AdjustmentRules': instance.adjustmentRules,
      'SupportsDaylightSavingTime': instance.supportsDaylightSavingTime,
    };

ApproverDetails _$ApproverDetailsFromJson(Map<String, dynamic> json) {
  return ApproverDetails(
    userId: json['UserId'] as int,
    email: json['Email'] as String,
    name: json['Name'] as String,
  );
}

Map<String, dynamic> _$ApproverDetailsToJson(ApproverDetails instance) =>
    <String, dynamic>{
      'UserId': instance.userId,
      'Email': instance.email,
      'Name': instance.name,
    };

BillingEntities _$BillingEntitiesFromJson(Map<String, dynamic> json) {
  return BillingEntities(
    entityId: json['EntityId'] as int,
    entityName: json['EntityName'] as String,
    entityLegalName: json['EntityLegalName'] as String,
    entityCode: json['EntityCode'] as String,
    isActive: json['IsActive'] as bool,
    isDefault: json['IsDefault'] as bool,
    corporateId: json['CorporateId'] as int,
    agencyId: json['AgencyId'] as int,
    addressId: json['AddressId'] as int,
    address: json['Address'] == null
        ? null
        : Address.fromJson(json['Address'] as Map<String, dynamic>),
    contactPersons: (json['ContactPersons'] as List)
        ?.map((e) => e == null
            ? null
            : ContactPersons.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    corporateTax: (json['CorporateTax'] as List)
        ?.map((e) =>
            e == null ? null : CorporateTax.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    corporateGSTId: json['CorporateGSTId'] as int,
    createdBy: json['CreatedBy'] as int,
    createdOn: json['CreatedOn'] as String,
    lastModifiedBy: json['LastModifiedBy'] as int,
    lastModifiedOn: json['LastModifiedOn'] as String,
  );
}

Map<String, dynamic> _$BillingEntitiesToJson(BillingEntities instance) =>
    <String, dynamic>{
      'EntityId': instance.entityId,
      'EntityName': instance.entityName,
      'EntityLegalName': instance.entityLegalName,
      'EntityCode': instance.entityCode,
      'IsActive': instance.isActive,
      'IsDefault': instance.isDefault,
      'CorporateId': instance.corporateId,
      'AgencyId': instance.agencyId,
      'AddressId': instance.addressId,
      'Address': instance.address?.toJson(),
      'ContactPersons':
          instance.contactPersons?.map((e) => e?.toJson())?.toList(),
      'CorporateTax': instance.corporateTax?.map((e) => e?.toJson())?.toList(),
      'CorporateGSTId': instance.corporateGSTId,
      'CreatedBy': instance.createdBy,
      'CreatedOn': instance.createdOn,
      'LastModifiedBy': instance.lastModifiedBy,
      'LastModifiedOn': instance.lastModifiedOn,
    };

Address _$AddressFromJson(Map<String, dynamic> json) {
  return Address(
    entityAddressId: json['EntityAddressId'] as int,
    addressName: json['AddressName'] as String,
    address: json['Address'] as String,
    countryCode: json['CountryCode'] as String,
    city: json['City'] as String,
    corporateId: json['CorporateId'] as int,
    isActive: json['IsActive'] as bool,
    createdBy: json['CreatedBy'] as int,
    createdOn: json['CreatedOn'] as String,
    lastModifiedBy: json['LastModifiedBy'] as int,
    lastModifiedOn: json['LastModifiedOn'] as String,
  );
}

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'EntityAddressId': instance.entityAddressId,
      'AddressName': instance.addressName,
      'Address': instance.address,
      'CountryCode': instance.countryCode,
      'City': instance.city,
      'CorporateId': instance.corporateId,
      'IsActive': instance.isActive,
      'CreatedBy': instance.createdBy,
      'CreatedOn': instance.createdOn,
      'LastModifiedBy': instance.lastModifiedBy,
      'LastModifiedOn': instance.lastModifiedOn,
    };

ContactPersons _$ContactPersonsFromJson(Map<String, dynamic> json) {
  return ContactPersons(
    entityContactPersonId: json['EntityContactPersonId'] as int,
    title: json['Title'] as String,
    firstName: json['FirstName'] as String,
    lastName: json['LastName'] as String,
    email: json['Email'] as String,
    contactNo: json['ContactNo'] as String,
    billingEntityId: json['BillingEntityId'] as int,
    isActive: json['IsActive'] as bool,
    createdBy: json['CreatedBy'] as int,
    createdOn: json['CreatedOn'] as String,
    lastModifiedBy: json['LastModifiedBy'] as int,
    lastModifiedOn: json['LastModifiedOn'] as String,
  );
}

Map<String, dynamic> _$ContactPersonsToJson(ContactPersons instance) =>
    <String, dynamic>{
      'EntityContactPersonId': instance.entityContactPersonId,
      'Title': instance.title,
      'FirstName': instance.firstName,
      'LastName': instance.lastName,
      'Email': instance.email,
      'ContactNo': instance.contactNo,
      'BillingEntityId': instance.billingEntityId,
      'IsActive': instance.isActive,
      'CreatedBy': instance.createdBy,
      'CreatedOn': instance.createdOn,
      'LastModifiedBy': instance.lastModifiedBy,
      'LastModifiedOn': instance.lastModifiedOn,
    };

CorporateTax _$CorporateTaxFromJson(Map<String, dynamic> json) {
  return CorporateTax(
    taxType: json['TaxType'] as String,
    corporateGST: json['CorporateGST'] == null
        ? null
        : CorporateGST.fromJson(json['CorporateGST'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CorporateTaxToJson(CorporateTax instance) =>
    <String, dynamic>{
      'TaxType': instance.taxType,
      'CorporateGST': instance.corporateGST?.toJson(),
    };

CorporateGST _$CorporateGSTFromJson(Map<String, dynamic> json) {
  return CorporateGST(
    corporateGSTID: json['CorporateGSTID'] as int,
    address: json['Address'] as String,
    contactNumber: json['ContactNumber'] as String,
    email: json['Email'] as String,
    name: json['Name'] as String,
    number: json['Number'] as String,
    corporateId: json['CorporateId'] as int,
    isActive: json['IsActive'] as bool,
    createdBy: json['CreatedBy'] as int,
    createdOn: json['CreatedOn'] as String,
    lastModifiedBy: json['LastModifiedBy'] as int,
    lastModifiedOn: json['LastModifiedOn'] as String,
  );
}

Map<String, dynamic> _$CorporateGSTToJson(CorporateGST instance) =>
    <String, dynamic>{
      'CorporateGSTID': instance.corporateGSTID,
      'Address': instance.address,
      'ContactNumber': instance.contactNumber,
      'Email': instance.email,
      'Name': instance.name,
      'Number': instance.number,
      'CorporateId': instance.corporateId,
      'IsActive': instance.isActive,
      'CreatedBy': instance.createdBy,
      'CreatedOn': instance.createdOn,
      'LastModifiedBy': instance.lastModifiedBy,
      'LastModifiedOn': instance.lastModifiedOn,
    };

CostCenters _$CostCentersFromJson(Map<String, dynamic> json) {
  return CostCenters(
    costCenterId: json['CostCenterId'] as int,
    costCenterName: json['CostCenterName'] as String,
    costCenterCode: json['CostCenterCode'] as String,
    costCenterHead: json['CostCenterHead'] as String,
    costCenterBudget: json['CostCenterBudget'] as String,
    isActive: json['IsActive'] as bool,
    entityId: json['EntityId'] as int,
    entityName: json['EntityName'] as String,
    corporateId: json['CorporateId'] as int,
    createdOn: json['CreatedOn'] as String,
    createdBy: json['CreatedBy'] as int,
    lastModifiedOn: json['LastModifiedOn'] as String,
    lastModifiedBy: json['LastModifiedBy'] as int,
  );
}

Map<String, dynamic> _$CostCentersToJson(CostCenters instance) =>
    <String, dynamic>{
      'CostCenterId': instance.costCenterId,
      'CostCenterName': instance.costCenterName,
      'CostCenterCode': instance.costCenterCode,
      'CostCenterHead': instance.costCenterHead,
      'CostCenterBudget': instance.costCenterBudget,
      'IsActive': instance.isActive,
      'EntityId': instance.entityId,
      'EntityName': instance.entityName,
      'CorporateId': instance.corporateId,
      'CreatedOn': instance.createdOn,
      'CreatedBy': instance.createdBy,
      'LastModifiedOn': instance.lastModifiedOn,
      'LastModifiedBy': instance.lastModifiedBy,
    };

UserDocuments _$UserDocumentsFromJson(Map<String, dynamic> json) {
  return UserDocuments(
    userDocumentId: json['UserDocumentId'] as int,
    userId: json['UserId'] as int,
    title: json['Title'] as String,
    firstName: json['FirstName'] as String,
    middleName: json['MiddleName'] as String,
    lastName: json['LastName'] as String,
    birthDate: json['BirthDate'] as String,
    nationality: json['Nationality'] as String,
    residenceCountry: json['ResidenceCountry'] as String,
    gender: json['Gender'] as String,
    personType: json['PersonType'] as String,
    issuingCountry: json['IssuingCountry'] as String,
    issueDate: json['IssueDate'] as String,
    expiryDate: json['ExpiryDate'] as String,
    documentNumber: json['DocumentNumber'] as String,
    documentType: json['DocumentType'] as String,
    corporateId: json['CorporateId'] as int,
  );
}

Map<String, dynamic> _$UserDocumentsToJson(UserDocuments instance) =>
    <String, dynamic>{
      'UserDocumentId': instance.userDocumentId,
      'UserId': instance.userId,
      'Title': instance.title,
      'FirstName': instance.firstName,
      'MiddleName': instance.middleName,
      'LastName': instance.lastName,
      'BirthDate': instance.birthDate,
      'Nationality': instance.nationality,
      'ResidenceCountry': instance.residenceCountry,
      'Gender': instance.gender,
      'PersonType': instance.personType,
      'IssuingCountry': instance.issuingCountry,
      'IssueDate': instance.issueDate,
      'ExpiryDate': instance.expiryDate,
      'DocumentNumber': instance.documentNumber,
      'DocumentType': instance.documentType,
      'CorporateId': instance.corporateId,
    };

TravelPolicy _$TravelPolicyFromJson(Map<String, dynamic> json) {
  return TravelPolicy(
    policyId: json['PolicyId'] as int,
    policyName: json['PolicyName'] as String,
    lstFlightTravelPolicy: (json['LstFlightTravelPolicy'] as List)
        ?.map((e) => e == null
            ? null
            : LstFlightTravelPolicy.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    corporateId: json['CorporateId'] as int,
    isDefaultPolicy: json['IsDefaultPolicy'] as bool,
    isActive: json['IsActive'] as bool,
    createdOn: json['CreatedOn'] as String,
    lastModifiedOn: json['LastModifiedOn'] as String,
    createdBy: json['CreatedBy'] as int,
    lastModifiedBy: json['LastModifiedBy'] as int,
  );
}

Map<String, dynamic> _$TravelPolicyToJson(TravelPolicy instance) =>
    <String, dynamic>{
      'PolicyId': instance.policyId,
      'PolicyName': instance.policyName,
      'LstFlightTravelPolicy':
          instance.lstFlightTravelPolicy?.map((e) => e?.toJson())?.toList(),
      'CorporateId': instance.corporateId,
      'IsDefaultPolicy': instance.isDefaultPolicy,
      'IsActive': instance.isActive,
      'CreatedOn': instance.createdOn,
      'LastModifiedOn': instance.lastModifiedOn,
      'CreatedBy': instance.createdBy,
      'LastModifiedBy': instance.lastModifiedBy,
    };

LstFlightTravelPolicy _$LstFlightTravelPolicyFromJson(
    Map<String, dynamic> json) {
  return LstFlightTravelPolicy(
    haulType: json['HaulType'] as String,
    fareClass: json['FareClass'] as String,
    fareClassRestrict: json['FareClassRestrict'] as bool,
    stops: json['Stops'] as int,
    timeWindow: json['TimeWindow'] as int,
    fareType: json['FareType'] as String,
    fareCategory: json['FareCategory'] as String,
    advanceBookingDays: json['AdvanceBookingDays'] as int,
    flightCostBudget: json['FlightCostBudget'] as int,
    flightCostBudgetReturn: json['FlightCostBudgetReturn'] as int,
    budgetFlexibilityType: json['BudgetFlexibilityType'] as bool,
    budgetFlexibilityAmount: json['BudgetFlexibilityAmount'] as int,
    flightDurationToAllowBudget: json['FlightDurationToAllowBudget'] as int,
    flightAllowedBudget: json['FlightAllowedBudget'] as int,
    flightDurationToAllowClass: json['FlightDurationToAllowClass'] as int,
    flightAllowedClass: json['FlightAllowedClass'] as String,
    corporateId: json['CorporateId'] as int,
  );
}

Map<String, dynamic> _$LstFlightTravelPolicyToJson(
        LstFlightTravelPolicy instance) =>
    <String, dynamic>{
      'HaulType': instance.haulType,
      'FareClass': instance.fareClass,
      'FareClassRestrict': instance.fareClassRestrict,
      'Stops': instance.stops,
      'TimeWindow': instance.timeWindow,
      'FareType': instance.fareType,
      'FareCategory': instance.fareCategory,
      'AdvanceBookingDays': instance.advanceBookingDays,
      'FlightCostBudget': instance.flightCostBudget,
      'FlightCostBudgetReturn': instance.flightCostBudgetReturn,
      'BudgetFlexibilityType': instance.budgetFlexibilityType,
      'BudgetFlexibilityAmount': instance.budgetFlexibilityAmount,
      'FlightDurationToAllowBudget': instance.flightDurationToAllowBudget,
      'FlightAllowedBudget': instance.flightAllowedBudget,
      'FlightDurationToAllowClass': instance.flightDurationToAllowClass,
      'FlightAllowedClass': instance.flightAllowedClass,
      'CorporateId': instance.corporateId,
    };

Corporate _$CorporateFromJson(Map<String, dynamic> json) {
  return Corporate(
    displayName: json['DisplayName'] as String,
    corporateCode: json['CorporateCode'] as String,
    currency: json['Currency'] as String,
    bandType: json['BandType'] as String,
    userId: json['UserId'] as int,
    title: json['Title'] as String,
    firstName: json['FirstName'] as String,
    lastName: json['LastName'] as String,
    email: json['Email'] as String,
    dialCode: json['DialCode'] as String,
    mobileNumber: json['MobileNumber'] as String,
    contactNo: json['ContactNo'] as String,
    timeZoneId: json['TimeZoneId'] as String,
    formOfPayment: json['FormOfPayment'] as String,
    creditLimit: (json['CreditLimit'] as num)?.toDouble(),
    creditUsed: (json['CreditUsed'] as num)?.toDouble(),
    creditLeft: (json['CreditLeft'] as num)?.toDouble(),
    merchantFee: (json['MerchantFee'] as num)?.toDouble(),
    wallet: (json['Wallet'] as num)?.toDouble(),
    address: json['Address'] == null
        ? null
        : Address.fromJson(json['Address'] as Map<String, dynamic>),
    remarks: json['Remarks'] as String,
    isActive: json['IsActive'] as bool,
    corporateStatus: json['CorporateStatus'] as String,
    publishFareAllowed: json['PublishFareAllowed'] as bool,
    singleSignOnAllowed: json['SingleSignOnAllowed'] as bool,
    canDirectAccessPaxes: json['CanDirectAccessPaxes'] as bool,
    agencyId: json['AgencyId'] as int,
    createdBy: json['CreatedBy'] as int,
    createdOn: json['CreatedOn'] as String,
    lastModifiedBy: json['LastModifiedBy'] as int,
    lastModifiedOn: json['LastModifiedOn'] as String,
    corporateId: json['CorporateId'] as int,
    corporateName: json['CorporateName'] as String,
  );
}

Map<String, dynamic> _$CorporateToJson(Corporate instance) => <String, dynamic>{
      'DisplayName': instance.displayName,
      'CorporateCode': instance.corporateCode,
      'Currency': instance.currency,
      'BandType': instance.bandType,
      'UserId': instance.userId,
      'Title': instance.title,
      'FirstName': instance.firstName,
      'LastName': instance.lastName,
      'Email': instance.email,
      'DialCode': instance.dialCode,
      'MobileNumber': instance.mobileNumber,
      'ContactNo': instance.contactNo,
      'TimeZoneId': instance.timeZoneId,
      'FormOfPayment': instance.formOfPayment,
      'CreditLimit': instance.creditLimit,
      'CreditUsed': instance.creditUsed,
      'CreditLeft': instance.creditLeft,
      'MerchantFee': instance.merchantFee,
      'Wallet': instance.wallet,
      'Address': instance.address?.toJson(),
      'Remarks': instance.remarks,
      'IsActive': instance.isActive,
      'CorporateStatus': instance.corporateStatus,
      'PublishFareAllowed': instance.publishFareAllowed,
      'SingleSignOnAllowed': instance.singleSignOnAllowed,
      'CanDirectAccessPaxes': instance.canDirectAccessPaxes,
      'AgencyId': instance.agencyId,
      'CreatedBy': instance.createdBy,
      'CreatedOn': instance.createdOn,
      'LastModifiedBy': instance.lastModifiedBy,
      'LastModifiedOn': instance.lastModifiedOn,
      'CorporateId': instance.corporateId,
      'CorporateName': instance.corporateName,
    };

CorporateAddress _$CorporateAddressFromJson(Map<String, dynamic> json) {
  return CorporateAddress(
    addressId: json['AddressId'] as int,
    addressLine: json['AddressLine'] as String,
    city: json['City'] as String,
    countryCode: json['CountryCode'] as String,
    lastModifiedBy: json['LastModifiedBy'] as int,
  );
}

Map<String, dynamic> _$CorporateAddressToJson(CorporateAddress instance) =>
    <String, dynamic>{
      'AddressId': instance.addressId,
      'AddressLine': instance.addressLine,
      'City': instance.city,
      'CountryCode': instance.countryCode,
      'LastModifiedBy': instance.lastModifiedBy,
    };
