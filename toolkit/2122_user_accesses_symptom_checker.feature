@ios @android @URS-2122
@IBS-DE @IBD-DE @HB-DE
Feature: UC-2122 - User has access to symptom checker
	As an IBS or Heartburn user 
    I want to be able to manually check-in on a risk-assessment intake questionnaire
    so that the program content can be adjusted if my current situation poses a risk.

	Actors:    IBS and HB Users except Control Group User

	Trigger:  User opens Symptom checker from toolkit

	Success Scenario: User receives a warning and consults health care professional

	Acceptance Criteria:
    - User is able to access symptom reporting if they are in a medical device with symptom reporting available. 
    - User is able to select a specific set of sever symptoms
    - User gets feedback on selected symptoms
    - User gets access to specific articles based on the selected symptoms

@URS-UC-2122-01