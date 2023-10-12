Instance: SecondaryProphylaxisHealthAssessmentQuestionnaire
InstanceOf: Questionnaire
Usage: #definition

Description: "Gathers information about patient health at a secondary prophylaxis medication appointment"

* url = Canonical(SecondaryProphylaxisHealthAssessmentQuestionnaire)

* identifier[0].use = #official
* identifier[=].value = "SecondaryProphylaxisHealthAssessmentQuestionnaire"
* identifier[=].period.start = "2023-10-16"

* date = "2023-10-16"
* status = #draft
* experimental = false

* name = "SecondaryProphylaxisHealthAssessmentQuestionnaire"
* title = "Secondary Prophylaxis Health Assessment Questionnaire"
* purpose = "Gathers information about patient health at a secondary prophylaxis medication appointment"
* subjectType = #Patient
* publisher = "Te Whatu Ora"

* item[0] insert pageDisplayItem(page1,[[page1]],[[Please complete this questionnaire at the secondary prophylaxis appointment to assess a rheumatic fever patient's health.]])

* item[+] insert singleChoiceQuestion(SourceOfOralMedications,[[1)]],[[Source of oral medications? (choose one)]])
* item[=].answerOption[0].valueString = "GP prescription"
* item[=].answerOption[+].valueString = "3 monthly visit from a nurse"
* item[=].answerOption[+].valueString = "Monthly visit from a nurse"
* item[=].answerOption[+].valueString = "Pick-up from a pharmacy"
* item[=].answerOption[+].valueString = "Other"

* item[+] insert booleanQuestion(CaseOnWarfarin,[[2)]],[[Case on warfarin?]])
* item[=].initial.valueBoolean = false

* item[+] insert singleChoiceQuestion(WarfarinSupervisionService,[[2.1)]],[[Warfarin supervision service (choose one)]])
* item[=].enableWhen.question = "CaseOnWarfarin"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[=].answerOption[0].valueString = "GP"
* item[=].answerOption[+].valueString = "Pharmacy"
* item[=].answerOption[+].valueString = "Hospital service"
* item[=].answerOption[+].valueString = "Patient"
* item[=].answerOption[+].valueString = "Whanau"

* item[+] insert singleChoiceQuestion(MonitoringResultSource,[[3)]],[[International normalised ratio (INR) monitoring result source (choose one)]])
* item[=].answerOption[0].valueString = "Patient"
* item[=].answerOption[+].valueString = "Parent"
* item[=].answerOption[+].valueString = "Éclair"
* item[=].answerOption[+].valueString = "GP"
* item[=].answerOption[+].valueString = "Pharmacy"
* item[=].answerOption[+].valueString = "INROnline"
* item[=].answerOption[+].valueString = "Other"

* item[+] insert singleChoiceQuestion(FollowUpClinicalService,[[4)]],[[Follow-up clinical service? (choose one)]])
* item[=].answerOption[0].valueString = "Specialist"
* item[=].answerOption[+].valueString = "GP"
* item[=].answerOption[+].valueString = "To be determined"
