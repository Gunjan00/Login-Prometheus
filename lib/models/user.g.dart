// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    result: json['Result'] == null
        ? null
        : Result.fromJson(json['Result'] as Map<String, dynamic>),
    isSuccess: json['IsSuccess'] as bool,
    errors: json['Errors'] as List,
    alerts: json['Alerts'] as List,
    token: json['Token'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'Result': instance.result?.toJson(),
      'IsSuccess': instance.isSuccess,
      'Errors': instance.errors,
      'Alerts': instance.alerts,
      'Token': instance.token,
    };

Result _$ResultFromJson(Map<String, dynamic> json) {
  return Result(
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

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
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
