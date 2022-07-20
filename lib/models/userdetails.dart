import'package:json_annotation/json_annotation.dart';

part 'userdetails.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.pascal)
class UserDetails {
  Result result;
  bool isSuccess;
  List<dynamic> errors;
  List<dynamic> alerts;

  UserDetails({this.result, this.isSuccess, this.errors, this.alerts});

  factory UserDetails.fromJson(Map<String,dynamic> data) => _$UserDetailsFromJson(data);

  Map<String,dynamic> toJson() => _$UserDetailsToJson(this);

}

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.pascal)
class Result {
  User user;
  List<ApproverDetails> approverDetails;
  List<BillingEntities> billingEntities;
  List<CostCenters> costCenters;
  List<UserDocuments> userDocuments;
  String approvalFlowRule;
  TravelPolicy travelPolicy;
  String formOfPayment;
  Corporate corporate;

  Result(
      {this.user,
        this.approverDetails,
        this.billingEntities,
        this.costCenters,
        this.userDocuments,
        this.approvalFlowRule,
        this.travelPolicy,
        this.formOfPayment,
        this.corporate});


  factory Result.fromJson(Map<String,dynamic> data) => _$ResultFromJson(data);

  Map<String,dynamic> toJson() => _$ResultToJson(this);

}

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.pascal)
class User {
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

  User(
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


  factory User.fromJson(Map<String,dynamic> data) => _$UserFromJson(data);

  Map<String,dynamic> toJson() => _$UserToJson(this);

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

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.pascal)
class ApproverDetails {
  int userId;
  String email;
  String name;

  ApproverDetails({this.userId, this.email, this.name});

  factory ApproverDetails.fromJson(Map<String,dynamic> data) => _$ApproverDetailsFromJson(data);

  Map<String,dynamic> toJson() => _$ApproverDetailsToJson(this);

}

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.pascal)
class BillingEntities {
  int entityId;
  String entityName;
  String entityLegalName;
  String entityCode;
  bool isActive;
  bool isDefault;
  int corporateId;
  int agencyId;
  int addressId;
  Address address;
  List<ContactPersons> contactPersons;
  List<CorporateTax> corporateTax;
  int corporateGSTId;
  int createdBy;
  String createdOn;
  int lastModifiedBy;
  String lastModifiedOn;

  BillingEntities(
      {this.entityId,
        this.entityName,
        this.entityLegalName,
        this.entityCode,
        this.isActive,
        this.isDefault,
        this.corporateId,
        this.agencyId,
        this.addressId,
        this.address,
        this.contactPersons,
        this.corporateTax,
        this.corporateGSTId,
        this.createdBy,
        this.createdOn,
        this.lastModifiedBy,
        this.lastModifiedOn});


  factory BillingEntities.fromJson(Map<String,dynamic> data) => _$BillingEntitiesFromJson(data);

  Map<String,dynamic> toJson() => _$BillingEntitiesToJson(this);

}

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.pascal)
class Address {
  int entityAddressId;
  String addressName;
  String address;
  String countryCode;
  String city;
  int corporateId;
  bool isActive;
  int createdBy;
  String createdOn;
  int lastModifiedBy;
  String lastModifiedOn;

  Address(
      {this.entityAddressId,
        this.addressName,
        this.address,
        this.countryCode,
        this.city,
        this.corporateId,
        this.isActive,
        this.createdBy,
        this.createdOn,
        this.lastModifiedBy,
        this.lastModifiedOn});

  factory Address.fromJson(Map<String,dynamic> data) => _$AddressFromJson(data);

  Map<String,dynamic> toJson() => _$AddressToJson(this);

}

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.pascal)
class ContactPersons {
  int entityContactPersonId;
  String title;
  String firstName;
  String lastName;
  String email;
  String contactNo;
  int billingEntityId;
  bool isActive;
  int createdBy;
  String createdOn;
  int lastModifiedBy;
  String lastModifiedOn;

  ContactPersons(
      {this.entityContactPersonId,
        this.title,
        this.firstName,
        this.lastName,
        this.email,
        this.contactNo,
        this.billingEntityId,
        this.isActive,
        this.createdBy,
        this.createdOn,
        this.lastModifiedBy,
        this.lastModifiedOn});

  factory ContactPersons.fromJson(Map<String,dynamic> data) => _$ContactPersonsFromJson(data);

  Map<String,dynamic> toJson() => _$ContactPersonsToJson(this);

}

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.pascal)
class CorporateTax {
  String taxType;
  CorporateGST corporateGST;

  CorporateTax({this.taxType, this.corporateGST});

  factory CorporateTax.fromJson(Map<String,dynamic> data) => _$CorporateTaxFromJson(data);

  Map<String,dynamic> toJson() => _$CorporateTaxToJson(this);

}

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.pascal)
class CorporateGST {
  int corporateGSTID;
  String address;
  String contactNumber;
  String email;
  String name;
  String number;
  int corporateId;
  bool isActive;
  int createdBy;
  String createdOn;
  int lastModifiedBy;
  String lastModifiedOn;

  CorporateGST(
      {this.corporateGSTID,
        this.address,
        this.contactNumber,
        this.email,
        this.name,
        this.number,
        this.corporateId,
        this.isActive,
        this.createdBy,
        this.createdOn,
        this.lastModifiedBy,
        this.lastModifiedOn});

  factory CorporateGST.fromJson(Map<String,dynamic> data) => _$CorporateGSTFromJson(data);

  Map<String,dynamic> toJson() => _$CorporateGSTToJson(this);

}

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.pascal)
class CostCenters {
  int costCenterId;
  String costCenterName;
  String costCenterCode;
  String costCenterHead;
  String costCenterBudget;
  bool isActive;
  int entityId;
  String entityName;
  int corporateId;
  String createdOn;
  int createdBy;
  String lastModifiedOn;
  int lastModifiedBy;

  CostCenters(
      {this.costCenterId,
        this.costCenterName,
        this.costCenterCode,
        this.costCenterHead,
        this.costCenterBudget,
        this.isActive,
        this.entityId,
        this.entityName,
        this.corporateId,
        this.createdOn,
        this.createdBy,
        this.lastModifiedOn,
        this.lastModifiedBy});


  factory CostCenters.fromJson(Map<String,dynamic> data) => _$CostCentersFromJson(data);

  Map<String,dynamic> toJson() => _$CostCentersToJson(this);

}

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.pascal)
class UserDocuments {
  int userDocumentId;
  int userId;
  String title;
  String firstName;
  String middleName;
  String lastName;
  String birthDate;
  String nationality;
  String residenceCountry;
  String gender;
  String personType;
  String issuingCountry;
  String issueDate;
  String expiryDate;
  String documentNumber;
  String documentType;
  int corporateId;

  UserDocuments(
      {this.userDocumentId,
        this.userId,
        this.title,
        this.firstName,
        this.middleName,
        this.lastName,
        this.birthDate,
        this.nationality,
        this.residenceCountry,
        this.gender,
        this.personType,
        this.issuingCountry,
        this.issueDate,
        this.expiryDate,
        this.documentNumber,
        this.documentType,
        this.corporateId});


  factory UserDocuments.fromJson(Map<String,dynamic> data) => _$UserDocumentsFromJson(data);

  Map<String,dynamic> toJson() => _$UserDocumentsToJson(this);

}

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.pascal)
class TravelPolicy {
  int policyId;
  String policyName;
  List<LstFlightTravelPolicy> lstFlightTravelPolicy;
  int corporateId;
  bool isDefaultPolicy;
  bool isActive;
  String createdOn;
  String lastModifiedOn;
  int createdBy;
  int lastModifiedBy;

  TravelPolicy(
      {this.policyId,
        this.policyName,
        this.lstFlightTravelPolicy,
        this.corporateId,
        this.isDefaultPolicy,
        this.isActive,
        this.createdOn,
        this.lastModifiedOn,
        this.createdBy,
        this.lastModifiedBy});


  factory TravelPolicy.fromJson(Map<String,dynamic> data) => _$TravelPolicyFromJson(data);

  Map<String,dynamic> toJson() => _$TravelPolicyToJson(this);
}

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.pascal)
class LstFlightTravelPolicy {
  String haulType;
  String fareClass;
  bool fareClassRestrict;
  int stops;
  int timeWindow;
  String fareType;
  String fareCategory;
  int advanceBookingDays;
  int flightCostBudget;
  int flightCostBudgetReturn;
  bool budgetFlexibilityType;
  int budgetFlexibilityAmount;
  int flightDurationToAllowBudget;
  int flightAllowedBudget;
  int flightDurationToAllowClass;
  String flightAllowedClass;
  int corporateId;

  LstFlightTravelPolicy(
      {this.haulType,
        this.fareClass,
        this.fareClassRestrict,
        this.stops,
        this.timeWindow,
        this.fareType,
        this.fareCategory,
        this.advanceBookingDays,
        this.flightCostBudget,
        this.flightCostBudgetReturn,
        this.budgetFlexibilityType,
        this.budgetFlexibilityAmount,
        this.flightDurationToAllowBudget,
        this.flightAllowedBudget,
        this.flightDurationToAllowClass,
        this.flightAllowedClass,
        this.corporateId});

  factory LstFlightTravelPolicy.fromJson(Map<String,dynamic> data) => _$LstFlightTravelPolicyFromJson(data);

  Map<String,dynamic> toJson() => _$LstFlightTravelPolicyToJson(this);
}

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.pascal)
class Corporate {
  String displayName;
  String corporateCode;
  String currency;
  String bandType;
  int userId;
  String title;
  String firstName;
  String lastName;
  String email;
  String dialCode;
  String mobileNumber;
  String contactNo;
  String timeZoneId;
  String formOfPayment;
  double creditLimit;
  double creditUsed;
  double creditLeft;
  double merchantFee;
  double wallet;
  Address address;
  String remarks;
  bool isActive;
  String corporateStatus;
  bool publishFareAllowed;
  bool singleSignOnAllowed;
  bool canDirectAccessPaxes;
  int agencyId;
  int createdBy;
  String createdOn;
  int lastModifiedBy;
  String lastModifiedOn;
  int corporateId;
  String corporateName;

  Corporate(
      {this.displayName,
        this.corporateCode,
        this.currency,
        this.bandType,
        this.userId,
        this.title,
        this.firstName,
        this.lastName,
        this.email,
        this.dialCode,
        this.mobileNumber,
        this.contactNo,
        this.timeZoneId,
        this.formOfPayment,
        this.creditLimit,
        this.creditUsed,
        this.creditLeft,
        this.merchantFee,
        this.wallet,
        this.address,
        this.remarks,
        this.isActive,
        this.corporateStatus,
        this.publishFareAllowed,
        this.singleSignOnAllowed,
        this.canDirectAccessPaxes,
        this.agencyId,
        this.createdBy,
        this.createdOn,
        this.lastModifiedBy,
        this.lastModifiedOn,
        this.corporateId,
        this.corporateName});


  factory Corporate.fromJson(Map<String,dynamic> data) => _$CorporateFromJson(data);

  Map<String,dynamic> toJson() => _$CorporateToJson(this);

}

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.pascal)
class CorporateAddress {
  int addressId;
  String addressLine;
  String city;
  String countryCode;
  int lastModifiedBy;


  CorporateAddress(
      {this.addressId,
        this.addressLine,
        this.city,
        this.countryCode,
        this.lastModifiedBy});

  factory CorporateAddress.fromJson(Map<String,dynamic> data) => _$CorporateAddressFromJson(data);

  Map<String,dynamic> toJson() => _$CorporateAddressToJson(this);

}