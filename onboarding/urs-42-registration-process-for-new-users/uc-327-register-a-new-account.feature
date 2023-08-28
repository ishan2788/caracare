@ios @android @UC-327
@IBS-DE @IBD-DE @HB-DE
Feature: UC-327 - Registration Process for new users
	As a new user
	I want to register a new account
	so that I can securely access the digital health application

	Actors:             All users

	Trigger:            User opens the app for the first time and doesn’t have an account yet.

	Success Scenario:   Users should be able to register a new account

	Acceptance Criteria:
	- Users should be able to add their email address
	- Users should be able to see that the password is hidden
	- Users should be able to select all the mandatory check-boxes
	- Users should be able to create a new account
	- Passwords shall be checked for safety requirements (Length, Characters)

	Background:
		Given user open the app
		And user press on "NEU STARTEN"
		And user press on "Cara Care für Reizdarm"
		And user press on "WEITER"
		And user press on "BESTÄTIGEN"
		And user press on "Ich bin mindestens 18 Jahre alt."
		And user press on "Ich bin unter 70 Jahre alt."
		And user press on "Ich bin nicht schwanger."
		And user press on "BESTÄTIGEN"

	@REQ415
	  Scenario Outline: The sign up screen should have these fields.
		Given user scroll up
		And user press on "WEITER ZUR REGISTRIERUNG"
		And user has code of type <code_type> for study <study>
		And user enter unique email into "E-Mail-Adresse"
		And user enter "Caracare@123" into "Passwort"
		And user enter "Caracare@123" into "Passwort erneut eingeben"
		And user enter the code into "Freischalt- oder Zugangscode"
		And user press on "Ich habe die Nutzungsbedingungen gelesen"
		And user press on "Ich habe die Nutzungsbedingungen gelesen"
		And user press on "Ich habe die Datenschutzerklärung gelesen"
		And user scroll down
		And user press on "Registrieren"
		Then user sees "Bitte bestätige deine E-Mail-Adresse"

		Examples:
			| code_type | study |
			| "INTERVENTION" | "🧑‍💻 Test RCT IBS" |
			| "Control" | "🧑‍💻 Test RCT IBS" |
