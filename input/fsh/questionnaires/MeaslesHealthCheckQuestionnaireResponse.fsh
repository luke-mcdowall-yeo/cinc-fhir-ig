Instance: MeaslesHealthCheckQuestionnaireResponse
InstanceOf: QuestionnaireResponse
Description: "Example payload from an asymptomatic measles health check."
Usage: #example
* subject.type = "Patient"
* subject.identifier.value = "ZKW3813"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.display = "Velma Wood"
* authored = "2024-03-27T21:53:28.487Z"
* meta.lastUpdated = "2024-03-27T21:53:50.898Z"
* meta.versionId = "1"
* status = #completed
* source.type = "Patient"
* source.identifier.value = "ZKW3815"
* source.identifier.use = #official
* source.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* source.display = "Velma Wood3"
* item[0].answer.valueString = "Placeholder"
* item[=].linkId = "p00-MetaSourceEnvironment"
* item[=].text = "Source environment"
* item[+].linkId = "p01-Introduction"
* item[=].text = "Please complete this health check form. If you feel very sick right now contact your doctor or Healthline on 0800 611 116 for medical help. If it is an emergency call 111 and tell them you have been in contact with someone with measles."
* item[+].item.answer.valueBoolean = false
* item[=].item.linkId = "p02-q01-Symptoms"
* item[=].item.text = "Do you currently have any measles symptoms? (required) For example: fever, red blotchy rash, cough, runny nose, sore red eyes."
* item[=].linkId = "p02"
* item[=].text = "Symptoms"
* item[+].item.answer.valueCoding.display = "No"
* item[=].item.linkId = "p03-q01-Contact"
* item[=].item.text = "Do you know if you have had any contact with someone with measles since your last health check? (required)"
* item[=].linkId = "p03"
* item[=].text = "Health Context"
* item[+].item[0].answer.valueString = "No"
* item[=].item[=].linkId = "p04-q01-Visitors"
* item[=].item[=].text = "We want to know if you've been around anyone who might not be immune to measles. Have you had any visitors or left where you're staying? (required)"
* item[=].item[+].answer.valueBoolean = false
* item[=].item[=].linkId = "p04-q02-Quarantine"
* item[=].item[=].text = "Do you need any help to continue to quarantine? (required)"
* item[=].linkId = "p04"
* item[=].text = "Quarantine"
* item[+].item.item[0].linkId = "p05-Remember"
* item[=].item.item[=].text = "Remember, if you feel very sick right now contact your doctor or Healthline on 0800 611 116 for medical help. If it is an emergency call 111."
* item[=].item.item[+].linkId = "p05-Healthline"
* item[=].item.item[=].text = "Healthline is available 24 hours a day, 7 days a week if you need them. If you need to see your GP or doctor in person, always call before leaving your home to tell them you have been in contact with measles."
* item[=].item.item[+].linkId = "p05-Close"
* item[=].item.item[=].text = "You may now close this page."
* item[=].item.linkId = "p05-Container"
* item[=].linkId = "p05"
* item[=].text = "Thank you for completing the daily heath check."
* questionnaire = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/MeaslesHealthCheckQuestionnaire"
* author.type = "Patient"
* author.identifier.value = "ZKW3814"
* author.identifier.use = #official
* author.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* author.display = "Velma Wood2"