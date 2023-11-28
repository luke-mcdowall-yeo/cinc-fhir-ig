Instance: ConsentByRelatedPersonExample
InstanceOf: ManaakiNgaTahiConsent
Usage: #example
Description: "Example of a patient consent given on a patient's behalf by a relative, recorded by the Te Tai Tokerau Rheumatic Fever Service.

On-behalf consent can arises in rheumatic fever scenarios where patients are commonly children/teenagers.  This example shows how to identify the relative using a contained instance of 
a `RelatedPerson` FHIR resource.
"

* meta.profile = Canonical(ManaakiNgaTahiConsent)    // see the profile for ManaakiTahiConsent in this IG 
* meta.versionId = "2"
* meta.lastUpdated = "2023-11-24T00:10:00Z" // UTC datetime

* status = #proposed
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy "Privacy Consent"

* category = http://terminology.hl7.org/CodeSystem/consentcategorycodes#npp "Notice of Privacy Practices"
* dateTime = "2023-06-12T02:30:35.982Z"

* patient insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])
* organization insert ReferenceOrganisation(GOM086-B,[[Te Tai Tokerau Rheumatic Fever Secondary Prevention Service]])
* performer[0] insert ReferenceOrganisation(GOM086-B,[[Te Tai Tokerau Rheumatic Fever Secondary Prevention Service]])
* performer[+] insert ReferenceRelatedPerson ( ...)

* contained = contained-Related-Person  // contained resource identifies the relative who gave consent on patient's behalf

* policy[0].authority = "https://www.privacy.org.nz"
* policy[=].uri = "https://www.privacy.org.nz/privacy-act-2020/"
* policy[+].authority = "https://www.privacy.org.nz"
* policy[=].uri = "https://www.privacy.org.nz/privacy-act-2020/codes-of-practice/hipc2020/"

// ********
// make a provision for access by RF provider orgs 
* provision.period.start = "2023-06-12T02:30:35Z"
* provision.period.end = "2026-06-11T02:30:35Z"     // a 3 year period in this example
* provision.type = #permit
* provision.actor[0].role = http://terminology.hl7.org/CodeSystem/extra-security-role-type#datacollector "data collector"
* provision.actor[=].reference = Reference(LeadProvidersGroup)

* provision.actor[+].role = http://terminology.hl7.org/CodeSystem/extra-security-role-type#datasubject "data subject"
* provision.actor[=].reference insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])

* provision insert ConsentInstanceDataRef( PatientMedicationAllergyQuestionnaireResponse )

// * provision.data[0].meaning = #instance
// * provision.data[=].reference = Reference(blah blah)

// //// //// //// //// //// //// //// //// ////
// Make a contained resource identifying a RelatedPerson who gave Consent eg. patient's mum

Alias: $relatedrelationshiptypeCS = http://terminology.hl7.org/CodeSystem/v3-RoleCode

Instance: contained-Related-Person
InstanceOf: RelatedPerson
Usage: #inline
Description: "An example of how to Madeleine's mum (relationshiptype code for parent = #PRN) as the RelatedPerson who gave consent on Maddie's behalf"

* patient insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])
* name.given = "Beryl"
* name.family = "Hackett"
* relationship = 	$relatedrelationshiptypeCS#PRN