import'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.pascal)
class User {
  Result result;
  bool isSuccess;
  List<dynamic> errors;
  List<dynamic> alerts;
  String token;

  User({this.result, this.isSuccess, this.errors, this.alerts, this.token});


  factory User.fromJson(Map<String,dynamic> data) => _$UserFromJson(data);

  Map<String,dynamic> toJson() => _$UserToJson(this);

}
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.pascal)
class Result {
  int userId;
  String title;
  String firstName;
  String middleName;
  String lastName;
  String email;
  String employeeCode;
  int addressId;
  List<int> managers;
  UserActionDetails userActionDetails;
  Permissions permissions;
  String userType;
  String personType;
  String userRole;
  String birthDate;
  String agentCurrency;
  String corporateCurrency;
  String timeZoneId;
  TimeZone timeZone;
  int bandId;
  String bandType;
  int roleId;
  int agencyId;
  int corporateId;
  int billingEntityId;
  String entityName;
  int costCenterId;
  bool isActive;
  String remarks;
  String createdOn;
  int createdBy;
  String lastModifiedOn;
  int lastModifiedBy;
  String userStatus;
  String dialCode;
  String mobileNumber;
  String contactNo;
  List<dynamic> frequentFlyerDetailsData;
  String approvalFlowRule;
  bool isCustomizedTasks;
  bool isSingleSignOn;
  bool isSuccess;
  List<dynamic> errors;
  List<dynamic> alerts;

  Result(
      {this.userId,
        this.title,
        this.firstName,
        this.middleName,
        this.lastName,
        this.email,
        this.employeeCode,
        this.addressId,
        this.managers,
        this.userActionDetails,
        this.permissions,
        this.userType,
        this.personType,
        this.userRole,
        this.birthDate,
        this.agentCurrency,
        this.corporateCurrency,
        this.timeZoneId,
        this.timeZone,
        this.bandId,
        this.bandType,
        this.roleId,
        this.agencyId,
        this.corporateId,
        this.billingEntityId,
        this.entityName,
        this.costCenterId,
        this.isActive,
        this.remarks,
        this.createdOn,
        this.createdBy,
        this.lastModifiedOn,
        this.lastModifiedBy,
        this.userStatus,
        this.dialCode,
        this.mobileNumber,
        this.contactNo,
        this.frequentFlyerDetailsData,
        this.approvalFlowRule,
        this.isCustomizedTasks,
        this.isSingleSignOn,
        this.isSuccess,
        this.errors,
        this.alerts});

  factory Result.fromJson(Map<String,dynamic> data) => _$ResultFromJson(data);

  Map<String,dynamic> toJson() => _$ResultToJson(this);

}

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.pascal)
class UserActionDetails {
  bool isEmailVerified;
  bool isFirstPasswordChanged;
  bool isTourVisited;
  bool isInvitationSent;
  String passwordExpiryDate;

  UserActionDetails(
      {this.isEmailVerified,
        this.isFirstPasswordChanged,
        this.isTourVisited,
        this.isInvitationSent,
        this.passwordExpiryDate});

  factory UserActionDetails.fromJson(Map<String,dynamic> data) => _$UserActionDetailsFromJson(data);

  Map<String,dynamic> toJson() => _$UserActionDetailsToJson(this);

}

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.pascal)
class Permissions {
  bool canChangeBillingEntityDuringBooking;
  bool canChangeCostCenterDuringBooking;
  bool canBookForOthers;

  Permissions(
      {this.canChangeBillingEntityDuringBooking,
        this.canChangeCostCenterDuringBooking,
        this.canBookForOthers});

  factory Permissions.fromJson(Map<String,dynamic> data) => _$PermissionsFromJson(data);

  Map<String,dynamic> toJson() => _$PermissionsToJson(this);

}

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.pascal)
class TimeZone {
  String id;
  String displayName;
  String standardName;
  String daylightName;
  String baseUtcOffset;
  dynamic adjustmentRules;
  bool supportsDaylightSavingTime;

  TimeZone(
      {this.id,
        this.displayName,
        this.standardName,
        this.daylightName,
        this.baseUtcOffset,
        this.adjustmentRules,
        this.supportsDaylightSavingTime});

  factory TimeZone.fromJson(Map<String,dynamic> data) => _$TimeZoneFromJson(data);

  Map<String,dynamic> toJson() => _$TimeZoneToJson(this);

}