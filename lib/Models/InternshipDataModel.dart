class Internship {
  final int id;
  final String title;
  final String employmentType;
  final String company;
  final String startDate;
  final String duration;
  final String stipend;
  final List<String> locations;
  final String postedOn;
  final String postedByLabel;
  final String ppoLabelValue;

  Internship({
    required this.id,
    required this.title,
    required this.employmentType,
    required this.company,
    required this.startDate,
    required this.duration,
    required this.stipend,
    required this.locations,
    required this.postedOn,
    required this.postedByLabel,
    required this.ppoLabelValue,
  });

  factory Internship.fromJson(Map<String, dynamic> json) {
    return Internship(
      id: json['id'],
      title: json['title'],
      employmentType: json['employment_type'],
      company: json['company_name'],
      startDate: json['start_date'],
      duration: json['duration'],
      stipend: json['stipend']['salary'],
      locations: List<String>.from(json['location_names']),
      postedOn: json['posted_on'],
      postedByLabel: json['posted_by_label'],
      ppoLabelValue: json['ppo_label_value'],
    );
  }
}






// class InternshipDataModel {
//   int? id;
//   String? title;
//   String? employmentType;
//   ApplicationStatusMessage? applicationStatusMessage;
//   String? jobTitle;
//   bool? workFromHome;
//   String? segmentLabelValue;
//   String? internshipTypeLabelValue;
//   String? companyName;
//   String? companyUrl;
//   bool? isPremium;
//   bool? isPremiumInternship;
//   String? employerName;
//   String? companyLogo;
//   String? type;
//   String? url;
//   int? isInternchallenge;
//   bool? isExternal;
//   bool? isActive;
//   String? expiresAt;
//   String? closedAt;
//   String? profileName;
//   bool? partTime;
//   String? startDate;
//   String? duration;
//   Stipend? stipend;
//   String? salary;
//   String? jobExperience;
//   String? experience;
//   String? postedOn;
//   int? postedOnDateTime;
//   String? applicationDeadline;
//   String? expiringIn;
//   String? postedByLabel;
//   String? postedByLabelType;
//   List<String>? locationNames;
//   List<Locations>? locations;
//   String? startDateComparisonFormat;
//   String? startDate1;
//   String? startDate2;
//   bool? isPpo;
//   bool? isPpoSalaryDisclosed;
//   String? ppoSalary;
//   String? ppoSalary2;
//   String? ppoLabelValue;
//   bool? toShowExtraLabel;
//   String? extraLabelValue;
//   bool? isExtraLabelBlack;
//   bool? toShowInSearch;
//   Null? campaignEarlyAccessStartDateTime;
//   String? campaignEndDateTime;
//   List<Labels>? labels;
//   String? labelsApp;
//   List<String>? labelsAppInCard;
//   bool? isCovidWfhSelected;
//   bool? toShowCardMessage;
//   String? message;
//   bool? isApplicationCappingEnabled;
//   String? applicationCappingMessage;
//   bool? eligibleForEasyApply;
//   bool? eligibleForB2bApplyNow;
//   bool? toShowB2bLabel;
//   bool? isInternationalJob;
//   bool? toShowCoverLetter;
//   String? officeDays;
//
//   InternshipDataModel(
//       {this.id,
//         this.title,
//         this.employmentType,
//         this.applicationStatusMessage,
//         this.jobTitle,
//         this.workFromHome,
//         this.segmentLabelValue,
//         this.internshipTypeLabelValue,
//         this.companyName,
//         this.companyUrl,
//         this.isPremium,
//         this.isPremiumInternship,
//         this.employerName,
//         this.companyLogo,
//         this.type,
//         this.url,
//         this.isInternchallenge,
//         this.isExternal,
//         this.isActive,
//         this.expiresAt,
//         this.closedAt,
//         this.profileName,
//         this.partTime,
//         this.startDate,
//         this.duration,
//         this.stipend,
//         this.salary,
//         this.jobExperience,
//         this.experience,
//         this.postedOn,
//         this.postedOnDateTime,
//         this.applicationDeadline,
//         this.expiringIn,
//         this.postedByLabel,
//         this.postedByLabelType,
//         this.locationNames,
//         this.locations,
//         this.startDateComparisonFormat,
//         this.startDate1,
//         this.startDate2,
//         this.isPpo,
//         this.isPpoSalaryDisclosed,
//         this.ppoSalary,
//         this.ppoSalary2,
//         this.ppoLabelValue,
//         this.toShowExtraLabel,
//         this.extraLabelValue,
//         this.isExtraLabelBlack,
//         this.toShowInSearch,
//         this.campaignEarlyAccessStartDateTime,
//         this.campaignEndDateTime,
//         this.labels,
//         this.labelsApp,
//         this.labelsAppInCard,
//         this.isCovidWfhSelected,
//         this.toShowCardMessage,
//         this.message,
//         this.isApplicationCappingEnabled,
//         this.applicationCappingMessage,
//         this.eligibleForEasyApply,
//         this.eligibleForB2bApplyNow,
//         this.toShowB2bLabel,
//         this.isInternationalJob,
//         this.toShowCoverLetter,
//         this.officeDays});
//
//   InternshipDataModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     title = json['title'];
//     employmentType = json['employment_type'];
//     applicationStatusMessage = json['application_status_message'] != null
//         ? new ApplicationStatusMessage.fromJson(
//         json['application_status_message'])
//         : null;
//     jobTitle = json['job_title'];
//     workFromHome = json['work_from_home'];
//     segmentLabelValue = json['segment_label_value'];
//     internshipTypeLabelValue = json['internship_type_label_value'];
//     companyName = json['company_name'];
//     companyUrl = json['company_url'];
//     isPremium = json['is_premium'];
//     isPremiumInternship = json['is_premium_internship'];
//     employerName = json['employer_name'];
//     companyLogo = json['company_logo'];
//     type = json['type'];
//     url = json['url'];
//     isInternchallenge = json['is_internchallenge'];
//     isExternal = json['is_external'];
//     isActive = json['is_active'];
//     expiresAt = json['expires_at'];
//     closedAt = json['closed_at'];
//     profileName = json['profile_name'];
//     partTime = json['part_time'];
//     startDate = json['start_date'];
//     duration = json['duration'];
//     stipend =
//     json['stipend'] != null ? new Stipend.fromJson(json['stipend']) : null;
//     salary = json['salary'];
//     jobExperience = json['job_experience'];
//     experience = json['experience'];
//     postedOn = json['posted_on'];
//     postedOnDateTime = json['postedOnDateTime'];
//     applicationDeadline = json['application_deadline'];
//     expiringIn = json['expiring_in'];
//     postedByLabel = json['posted_by_label'];
//     postedByLabelType = json['posted_by_label_type'];
//     locationNames = json['location_names'].cast<String>();
//     if (json['locations'] != null) {
//       locations = <Locations>[];
//       json['locations'].forEach((v) {
//         locations!.add(new Locations.fromJson(v));
//       });
//     }
//     startDateComparisonFormat = json['start_date_comparison_format'];
//     startDate1 = json['start_date1'];
//     startDate2 = json['start_date2'];
//     isPpo = json['is_ppo'];
//     isPpoSalaryDisclosed = json['is_ppo_salary_disclosed'];
//     ppoSalary = json['ppo_salary'];
//     ppoSalary2 = json['ppo_salary2'];
//     ppoLabelValue = json['ppo_label_value'];
//     toShowExtraLabel = json['to_show_extra_label'];
//     extraLabelValue = json['extra_label_value'];
//     isExtraLabelBlack = json['is_extra_label_black'];
//     toShowInSearch = json['to_show_in_search'];
//     campaignEarlyAccessStartDateTime =
//     json['campaign_early_access_start_date_time'];
//     campaignEndDateTime = json['campaign_end_date_time'];
//     if (json['labels'] != null) {
//       labels = <Labels>[];
//       json['labels'].forEach((v) {
//         labels!.add(new Labels.fromJson(v));
//       });
//     }
//     labelsApp = json['labels_app'];
//     labelsAppInCard = json['labels_app_in_card'].cast<String>();
//     isCovidWfhSelected = json['is_covid_wfh_selected'];
//     toShowCardMessage = json['to_show_card_message'];
//     message = json['message'];
//     isApplicationCappingEnabled = json['is_application_capping_enabled'];
//     applicationCappingMessage = json['application_capping_message'];
//     eligibleForEasyApply = json['eligible_for_easy_apply'];
//     eligibleForB2bApplyNow = json['eligible_for_b2b_apply_now'];
//     toShowB2bLabel = json['to_show_b2b_label'];
//     isInternationalJob = json['is_international_job'];
//     toShowCoverLetter = json['to_show_cover_letter'];
//     officeDays = json['office_days'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['title'] = this.title;
//     data['employment_type'] = this.employmentType;
//     if (this.applicationStatusMessage != null) {
//       data['application_status_message'] =
//           this.applicationStatusMessage!.toJson();
//     }
//     data['job_title'] = this.jobTitle;
//     data['work_from_home'] = this.workFromHome;
//     data['segment_label_value'] = this.segmentLabelValue;
//     data['internship_type_label_value'] = this.internshipTypeLabelValue;
//     data['company_name'] = this.companyName;
//     data['company_url'] = this.companyUrl;
//     data['is_premium'] = this.isPremium;
//     data['is_premium_internship'] = this.isPremiumInternship;
//     data['employer_name'] = this.employerName;
//     data['company_logo'] = this.companyLogo;
//     data['type'] = this.type;
//     data['url'] = this.url;
//     data['is_internchallenge'] = this.isInternchallenge;
//     data['is_external'] = this.isExternal;
//     data['is_active'] = this.isActive;
//     data['expires_at'] = this.expiresAt;
//     data['closed_at'] = this.closedAt;
//     data['profile_name'] = this.profileName;
//     data['part_time'] = this.partTime;
//     data['start_date'] = this.startDate;
//     data['duration'] = this.duration;
//     if (this.stipend != null) {
//       data['stipend'] = this.stipend!.toJson();
//     }
//     data['salary'] = this.salary;
//     data['job_experience'] = this.jobExperience;
//     data['experience'] = this.experience;
//     data['posted_on'] = this.postedOn;
//     data['postedOnDateTime'] = this.postedOnDateTime;
//     data['application_deadline'] = this.applicationDeadline;
//     data['expiring_in'] = this.expiringIn;
//     data['posted_by_label'] = this.postedByLabel;
//     data['posted_by_label_type'] = this.postedByLabelType;
//     data['location_names'] = this.locationNames;
//     if (this.locations != null) {
//       data['locations'] = this.locations!.map((v) => v.toJson()).toList();
//     }
//     data['start_date_comparison_format'] = this.startDateComparisonFormat;
//     data['start_date1'] = this.startDate1;
//     data['start_date2'] = this.startDate2;
//     data['is_ppo'] = this.isPpo;
//     data['is_ppo_salary_disclosed'] = this.isPpoSalaryDisclosed;
//     data['ppo_salary'] = this.ppoSalary;
//     data['ppo_salary2'] = this.ppoSalary2;
//     data['ppo_label_value'] = this.ppoLabelValue;
//     data['to_show_extra_label'] = this.toShowExtraLabel;
//     data['extra_label_value'] = this.extraLabelValue;
//     data['is_extra_label_black'] = this.isExtraLabelBlack;
//     data['to_show_in_search'] = this.toShowInSearch;
//     data['campaign_early_access_start_date_time'] =
//         this.campaignEarlyAccessStartDateTime;
//     data['campaign_end_date_time'] = this.campaignEndDateTime;
//     if (this.labels != null) {
//       data['labels'] = this.labels!.map((v) => v.toJson()).toList();
//     }
//     data['labels_app'] = this.labelsApp;
//     data['labels_app_in_card'] = this.labelsAppInCard;
//     data['is_covid_wfh_selected'] = this.isCovidWfhSelected;
//     data['to_show_card_message'] = this.toShowCardMessage;
//     data['message'] = this.message;
//     data['is_application_capping_enabled'] = this.isApplicationCappingEnabled;
//     data['application_capping_message'] = this.applicationCappingMessage;
//     data['eligible_for_easy_apply'] = this.eligibleForEasyApply;
//     data['eligible_for_b2b_apply_now'] = this.eligibleForB2bApplyNow;
//     data['to_show_b2b_label'] = this.toShowB2bLabel;
//     data['is_international_job'] = this.isInternationalJob;
//     data['to_show_cover_letter'] = this.toShowCoverLetter;
//     data['office_days'] = this.officeDays;
//     return data;
//   }
// }
//
// class ApplicationStatusMessage {
//   bool? toShow;
//   String? message;
//   String? type;
//
//   ApplicationStatusMessage({this.toShow, this.message, this.type});
//
//   ApplicationStatusMessage.fromJson(Map<String, dynamic> json) {
//     toShow = json['to_show'];
//     message = json['message'];
//     type = json['type'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['to_show'] = this.toShow;
//     data['message'] = this.message;
//     data['type'] = this.type;
//     return data;
//   }
// }
//
// class Stipend {
//   String? salary;
//   String? tooltip;
//   int? salaryValue1;
//   int? salaryValue2;
//   String? salaryType;
//   String? currency;
//   String? scale;
//   bool? largeStipendText;
//
//   Stipend(
//       {this.salary,
//         this.tooltip,
//         this.salaryValue1,
//         this.salaryValue2,
//         this.salaryType,
//         this.currency,
//         this.scale,
//         this.largeStipendText});
//
//   Stipend.fromJson(Map<String, dynamic> json) {
//     salary = json['salary'];
//     tooltip = json['tooltip'];
//     salaryValue1 = json['salaryValue1'];
//     salaryValue2 = json['salaryValue2'];
//     salaryType = json['salaryType'];
//     currency = json['currency'];
//     scale = json['scale'];
//     largeStipendText = json['large_stipend_text'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['salary'] = this.salary;
//     data['tooltip'] = this.tooltip;
//     data['salaryValue1'] = this.salaryValue1;
//     data['salaryValue2'] = this.salaryValue2;
//     data['salaryType'] = this.salaryType;
//     data['currency'] = this.currency;
//     data['scale'] = this.scale;
//     data['large_stipend_text'] = this.largeStipendText;
//     return data;
//   }
// }
//
// class Locations {
//   String? string;
//   String? link;
//   String? country;
//   String? region;
//   String? locationName;
//
//   Locations(
//       {this.string, this.link, this.country, this.region, this.locationName});
//
//   Locations.fromJson(Map<String, dynamic> json) {
//     string = json['string'];
//     link = json['link'];
//     country = json['country'];
//     region = json['region'];
//     locationName = json['locationName'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['string'] = this.string;
//     data['link'] = this.link;
//     data['country'] = this.country;
//     data['region'] = this.region;
//     data['locationName'] = this.locationName;
//     return data;
//   }
// }
//
// class Labels {
//   List<String>? labelValue;
//   List<String>? labelMobile;
//   List<String>? labelApp;
//   List<String>? labelsAppInCard;
//
//   Labels(
//       {this.labelValue, this.labelMobile, this.labelApp, this.labelsAppInCard});
//
//   Labels.fromJson(Map<String, dynamic> json) {
//     labelValue = json['label_value'].cast<String>();
//     labelMobile = json['label_mobile'].cast<String>();
//     labelApp = json['label_app'].cast<String>();
//     labelsAppInCard = json['labels_app_in_card'].cast<String>();
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['label_value'] = this.labelValue;
//     data['label_mobile'] = this.labelMobile;
//     data['label_app'] = this.labelApp;
//     data['labels_app_in_card'] = this.labelsAppInCard;
//     return data;
//   }
// }





