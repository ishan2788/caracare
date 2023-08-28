@ios @android @URS-2396
@IBS-DE @IBD-DE @HB-DE
Feature: UC-37 - New User Registration
  As a new user
  As part of the registration process I want to be able to enter a reimbursement code
  so that I can begin using the health care application.

  Actors:             New users

  Trigger:            User installs and opens the app and enters email and password

  Success Scenario:   Users should be able to see the registration flows and enter a reimbursement code

  Acceptance Criteria:
  - User can proceed see the reimbursement code screen
  - User can enter a reimbursement code
  - User can proceed to the next screen

  @URS-UC-2396-04 @wip
  Scenario: New users should be able to enter a reimbursement code.
	Given user open the app
	And user has code of type "INTERVENTION" for study "🧑‍💻 Test Doctors – IBD"
	And user press on "NEU STARTEN"
	Then user should see "Willkommen bei Cara Care!" in 120 seconds
	Given user press on "Cara Care für CED"
	And user should see "Cara Care für CED ist ein zertifiziertes Medizinpro"
	And user press on "WEITER"
	And user should see "Hinweis"
	And user sees "BESTÄTIGEN"
	And user press on "BESTÄTIGEN"
	And user press on "Ich bin mindestens 18 Jahre alt"
	And user press on "Ich bin unter 70 Jahre alt"
	And user press on "BESTÄTIGEN"
	Then user should see "Erhalte Zugang zu Cara Care für CED"
	Given user press on "WEITER ZUR REGISTRIERUNG"
	And user  remains on the same screen
	And user sees "Leider ist ein technisches Problem aufgetreten und wir können aktuell keine Verbindung zu deiner Krankenkasse aufbauen. Bitte versuche es später erneut."
